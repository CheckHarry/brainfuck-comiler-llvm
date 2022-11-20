
#include <algorithm>
#include <cctype>
#include <cstdio>
#include <cstdlib>
#include <map>
#include <memory>
#include <string>
#include <vector>
#include <stack>
#include "llvm/ADT/APFloat.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/Transforms/InstCombine/InstCombine.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Scalar/GVN.h"
#include "llvm/Passes/OptimizationLevel.h"

using namespace llvm;

static std::unique_ptr<LLVMContext> TheContext;
static std::unique_ptr<Module> TheModule;
static std::unique_ptr<IRBuilder<>> Builder;
static std::map<std::string, Value *> NamedValues;

static Value *ptr;
static BasicBlock *mainblock;

void moveptr(int i)
{
    Value *temp = Builder->CreateInBoundsGEP(
        Builder->getInt32Ty(),
        Builder->CreateLoad(Builder->getPtrTy(), ptr, "ptrValue"),
        ConstantInt::get(IntegerType::getInt32Ty(*TheContext), i));
    Builder->CreateStore(temp, ptr);
}

void addptrval(int i)
{
    Value *temp = Builder->CreateLoad(
        Builder->getPtrTy(),
        ptr); // the address that ptr point to
    Value *newval = Builder->CreateLoad(
        Builder->getInt32Ty(),
        temp); // dereference temp
    newval = Builder->CreateAdd(newval, Builder->getInt32(i));
    Builder->CreateStore(
        newval,
        temp);
        
}
void put()
{
    llvm::FunctionCallee funcPutChar =
        TheModule->getOrInsertFunction("putchar",
                                       Builder->getInt32Ty(),
                                       Builder->getInt32Ty(),
                                       nullptr);                 

    Builder->CreateCall(
        funcPutChar,
        {Builder->CreateLoad(Builder->getInt32Ty(), Builder->CreateLoad(Builder->getPtrTy(), ptr))});

}

void get()
{
    FunctionCallee funcGetChar =
        TheModule->getOrInsertFunction("getchar",
                                       Builder->getInt32Ty(),
                                       nullptr);
    auto result = Builder->CreateCall(funcGetChar);

    Builder->CreateStore(
        result, 
        Builder->CreateLoad(Builder->getPtrTy(), ptr));
}


void while_start(BasicBlock *&header , BasicBlock *&exit)
{
    Function *TheFunction = Builder->GetInsertBlock()->getParent();
    header = BasicBlock::Create(*TheContext, "header", TheFunction);
    auto loop = BasicBlock::Create(*TheContext, "loop", TheFunction);
    exit = BasicBlock::Create(*TheContext, "exit", TheFunction);
    Builder->CreateBr(header);
    Builder->SetInsertPoint(header);

    auto cond = Builder->CreateICmpNE(
        Builder->CreateLoad(
            Builder->getInt32Ty(),
            Builder->CreateLoad(
                Builder->getPtrTy(),
                ptr)),
        Builder->getInt32(0));

    Builder->CreateCondBr(
        cond,
        loop,
        exit);
    
    Builder->SetInsertPoint(loop);
}

void while_end(BasicBlock *header , BasicBlock *exit)
{
    Builder->CreateBr(header);
    Builder->SetInsertPoint(exit);
}

Value* initFunc()
{
    TheContext = std::make_unique<LLVMContext>();
    TheModule = std::make_unique<Module>("testing", *TheContext);
    Builder = std::make_unique<IRBuilder<>>(*TheContext);

    Function *mainFunc = Function::Create(
        FunctionType::get(Type::getInt32Ty(*TheContext), false),
        Function::ExternalLinkage, "main", TheModule.get());

    Function *putchar =
        Function::Create(
            FunctionType::get(Type::getInt32Ty(*TheContext), {Type::getInt32Ty(*TheContext)}, false),
            Function::ExternalLinkage,
            "putchar",
            TheModule.get());

    Function *getchar =
        Function::Create(
            FunctionType::get(Type::getInt32Ty(*TheContext), false),
            Function::ExternalLinkage,
            "getchar",
            TheModule.get());
    
    Function *malloc =
        Function::Create(
            FunctionType::get(Builder -> getPtrTy() , {Builder -> getInt32Ty()} , false),
            Function::ExternalLinkage,
            "malloc",
            TheModule.get());

    

    

    mainblock = llvm::BasicBlock::Create(*TheContext, "", mainFunc);
    Builder->SetInsertPoint(mainblock);

    llvm::FunctionCallee funcmalloc =
        TheModule->getOrInsertFunction("malloc",
                                       Builder->getPtrTy(),
                                       Builder->getInt32Ty(),
                                       nullptr);                 

    auto result = Builder->CreateCall(
        funcmalloc,
        Builder->getInt32(65536));

    auto TheFPM = std::make_unique<legacy::FunctionPassManager>(TheModule.get());

    
  
    for (int i = 0 ; i < 1 ; i ++)
    {
        // Do simple "peephole" optimizations and bit-twiddling optzns.
        TheFPM->add(createInstructionCombiningPass());
        // Reassociate expressions.
        TheFPM->add(createReassociatePass());
        // Eliminate Common SubExpressions.
        TheFPM->add(createGVNPass());
        // Simplify the control flow graph (deleting unreachable blocks, etc).
        TheFPM->add(createCFGSimplificationPass());

        TheFPM->add(createAggressiveDCEPass());
    }
        
    TheFPM->doInitialization();

    InitializeAllTargetInfos();
    InitializeAllTargets();
    InitializeAllTargetMCs();
    InitializeAllAsmParsers();
    InitializeAllAsmPrinters();

    return result;
}

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        printf("incorrect input number\n");
        return -1;
    }

    char bf_prg[20000];
    int prg_size;
    FILE *f;
    f = fopen(argv[1] , "r");

    if( NULL == f ){
        printf( "open failure\n" );
        return 1;
    }else{
        prg_size = fread(bf_prg , 1 , sizeof(bf_prg) , f);
    }




    auto mem = initFunc();

    ptr = Builder->CreateAlloca(PointerType::get(*TheContext, 0), nullptr, "Ptr");
    std::stack<std::pair<BasicBlock* , BasicBlock*>> while_stack;
    Builder->CreateStore(mem, ptr);

    int i = 0;
    while (bf_prg[i])
    {
        switch (bf_prg[i])
        {
        case '>':
            moveptr(1);
            break;
        case '<':
            moveptr(-1);
            break;
        case '+':
            addptrval(1);
            break;
        case '-':
            addptrval(-1);
            break;
        case '.':
            put();
            break;
        case ',':
            get();
            break;
        case '[':
            BasicBlock *header , *exit;
            while_start(header , exit);
            while_stack.push({header , exit});
            break;
        case ']':
            if (while_stack.empty())
            {
                return -1;
            }
            while_end(while_stack.top().first , while_stack.top().second);
            while_stack.pop();

            break;
        
        default:
            break;
        }

        i ++;
    }

    Builder -> CreateRet(Builder -> getInt32(0));

    //PassBuilder PB;
    //ModulePassManager MPM = PB.buildPerModuleDefaultPipeline(OptimizationLevel::O2);

// Optimize the IR!
    //MPM.run(MyModule, MAM);
    /*
    BasicBlock *header , *exit;
    while_start(header , exit);
    moveptr(1);
    while_end(header , exit);
    */
    // Builder -> CreateBr(b);
    // Builder -> SetInsertPoint(b);

    TheModule->print(errs(), nullptr);
}