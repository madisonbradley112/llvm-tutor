; ModuleID = 'comparison-output/before/injectfunccall-modified/input_for_hello.ll'
source_filename = "../inputs/input_for_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PrintfFormatStr = global [65 x i8] c"(llvm-tutor) Hello from: %s\0A(llvm-tutor)   number of stores: %d\0A\00"
@0 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"fez\00", align 1
@3 = private unnamed_addr constant [5 x i8] c"main\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo(i32 noundef %a) #0 {
entry:
  %0 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @0, i32 1)
  %a.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  %1 = load i32, ptr %a.addr, align 4
  %mul = mul nsw i32 %1, 2
  ret i32 %mul
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bar(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %0 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @1, i32 2)
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %1 = load i32, ptr %a.addr, align 4
  %2 = load i32, ptr %b.addr, align 4
  %call = call i32 @foo(i32 noundef %2)
  %mul = mul nsw i32 %call, 2
  %add = add nsw i32 %1, %mul
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fez(i32 noundef %a, i32 noundef %b, i32 noundef %c) #0 {
entry:
  %0 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @2, i32 3)
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  %1 = load i32, ptr %a.addr, align 4
  %2 = load i32, ptr %a.addr, align 4
  %3 = load i32, ptr %b.addr, align 4
  %call = call i32 @bar(i32 noundef %2, i32 noundef %3)
  %mul = mul nsw i32 %call, 2
  %add = add nsw i32 %1, %mul
  %4 = load i32, ptr %c.addr, align 4
  %mul1 = mul nsw i32 %4, 3
  %add2 = add nsw i32 %add, %mul1
  ret i32 %add2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %0 = call i32 (ptr, ...) @printf(ptr @PrintfFormatStr, ptr @3, i32 8)
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %a = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 123, ptr %a, align 4
  store i32 0, ptr %ret, align 4
  %1 = load i32, ptr %a, align 4
  %call = call i32 @foo(i32 noundef %1)
  %2 = load i32, ptr %ret, align 4
  %add = add nsw i32 %2, %call
  store i32 %add, ptr %ret, align 4
  %3 = load i32, ptr %a, align 4
  %4 = load i32, ptr %ret, align 4
  %call1 = call i32 @bar(i32 noundef %3, i32 noundef %4)
  %5 = load i32, ptr %ret, align 4
  %add2 = add nsw i32 %5, %call1
  store i32 %add2, ptr %ret, align 4
  %6 = load i32, ptr %a, align 4
  %7 = load i32, ptr %ret, align 4
  %call3 = call i32 @fez(i32 noundef %6, i32 noundef %7, i32 noundef 123)
  %8 = load i32, ptr %ret, align 4
  %add4 = add nsw i32 %8, %call3
  store i32 %add4, ptr %ret, align 4
  %9 = load i32, ptr %ret, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare i32 @printf(ptr nocapture readonly, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 88bf774c565080e30e0a073676c316ab175303af)"}
