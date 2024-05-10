; ModuleID = '<stdin>'
source_filename = "/home/madison.bradley/llvm-tutor/test/../inputs/input_for_mba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @foo(i8 noundef signext %a, i8 noundef signext %b, i8 noundef signext %c, i8 noundef signext %d) #0 {
lt-if-then-else-0:
  %0 = icmp eq i8 %c, 0
  br i1 %0, label %lt-clone-1-0, label %lt-clone-2-0

lt-clone-1-0:                                     ; preds = %lt-if-then-else-0
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i8 %a, ptr %1, align 1
  store i8 %b, ptr %2, align 1
  store i8 %c, ptr %3, align 1
  store i8 %d, ptr %4, align 1
  %7 = load i8, ptr %3, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, ptr %4, align 1
  %10 = sext i8 %9 to i32
  %11 = add nsw i32 %8, %10
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %5, align 1
  %13 = load i8, ptr %1, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, ptr %2, align 1
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %14, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %6, align 1
  %19 = load i8, ptr %5, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, ptr %6, align 1
  %22 = sext i8 %21 to i32
  %23 = add nsw i32 %20, %22
  %24 = trunc i32 %23 to i8
  br label %lt-tail-0

lt-clone-2-0:                                     ; preds = %lt-if-then-else-0
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  store i8 %a, ptr %25, align 1
  store i8 %b, ptr %26, align 1
  store i8 %c, ptr %27, align 1
  store i8 %d, ptr %28, align 1
  %31 = load i8, ptr %27, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, ptr %28, align 1
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %32, %34
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr %29, align 1
  %37 = load i8, ptr %25, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, ptr %26, align 1
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %38, %40
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %30, align 1
  %43 = load i8, ptr %29, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, ptr %30, align 1
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %44, %46
  %48 = trunc i32 %47 to i8
  br label %lt-tail-0

lt-tail-0:                                        ; preds = %lt-clone-2-0, %lt-clone-1-0
  %a.addr = phi ptr [ %1, %lt-clone-1-0 ], [ %25, %lt-clone-2-0 ]
  %b.addr = phi ptr [ %2, %lt-clone-1-0 ], [ %26, %lt-clone-2-0 ]
  %c.addr = phi ptr [ %3, %lt-clone-1-0 ], [ %27, %lt-clone-2-0 ]
  %d.addr = phi ptr [ %4, %lt-clone-1-0 ], [ %28, %lt-clone-2-0 ]
  %e = phi ptr [ %5, %lt-clone-1-0 ], [ %29, %lt-clone-2-0 ]
  %f = phi ptr [ %6, %lt-clone-1-0 ], [ %30, %lt-clone-2-0 ]
  %49 = phi i8 [ %7, %lt-clone-1-0 ], [ %31, %lt-clone-2-0 ]
  %conv = phi i32 [ %8, %lt-clone-1-0 ], [ %32, %lt-clone-2-0 ]
  %50 = phi i8 [ %9, %lt-clone-1-0 ], [ %33, %lt-clone-2-0 ]
  %conv1 = phi i32 [ %10, %lt-clone-1-0 ], [ %34, %lt-clone-2-0 ]
  %add = phi i32 [ %11, %lt-clone-1-0 ], [ %35, %lt-clone-2-0 ]
  %conv2 = phi i8 [ %12, %lt-clone-1-0 ], [ %36, %lt-clone-2-0 ]
  %51 = phi i8 [ %13, %lt-clone-1-0 ], [ %37, %lt-clone-2-0 ]
  %conv3 = phi i32 [ %14, %lt-clone-1-0 ], [ %38, %lt-clone-2-0 ]
  %52 = phi i8 [ %15, %lt-clone-1-0 ], [ %39, %lt-clone-2-0 ]
  %conv4 = phi i32 [ %16, %lt-clone-1-0 ], [ %40, %lt-clone-2-0 ]
  %add5 = phi i32 [ %17, %lt-clone-1-0 ], [ %41, %lt-clone-2-0 ]
  %conv6 = phi i8 [ %18, %lt-clone-1-0 ], [ %42, %lt-clone-2-0 ]
  %53 = phi i8 [ %19, %lt-clone-1-0 ], [ %43, %lt-clone-2-0 ]
  %conv7 = phi i32 [ %20, %lt-clone-1-0 ], [ %44, %lt-clone-2-0 ]
  %54 = phi i8 [ %21, %lt-clone-1-0 ], [ %45, %lt-clone-2-0 ]
  %conv8 = phi i32 [ %22, %lt-clone-1-0 ], [ %46, %lt-clone-2-0 ]
  %add9 = phi i32 [ %23, %lt-clone-1-0 ], [ %47, %lt-clone-2-0 ]
  %conv10 = phi i8 [ %24, %lt-clone-1-0 ], [ %48, %lt-clone-2-0 ]
  ret i8 %conv10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
lt-if-then-else-1:
  %0 = icmp eq i32 %argc, 0
  br i1 %0, label %lt-clone-1-1, label %lt-clone-2-1

lt-clone-1-1:                                     ; preds = %lt-if-then-else-1
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 0, ptr %1, align 4
  store i32 %argc, ptr %2, align 4
  store ptr %argv, ptr %3, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @atoi(ptr noundef %11) #2
  store i32 %12, ptr %4, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @atoi(ptr noundef %15) #2
  store i32 %16, ptr %5, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @atoi(ptr noundef %19) #2
  store i32 %20, ptr %6, align 4
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds ptr, ptr %21, i64 4
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @atoi(ptr noundef %23) #2
  store i32 %24, ptr %7, align 4
  %25 = load i32, ptr %4, align 4
  %26 = trunc i32 %25 to i8
  %27 = load i32, ptr %5, align 4
  %28 = trunc i32 %27 to i8
  %29 = load i32, ptr %6, align 4
  %30 = trunc i32 %29 to i8
  %31 = load i32, ptr %7, align 4
  %32 = trunc i32 %31 to i8
  %33 = call signext i8 @foo(i8 noundef signext %26, i8 noundef signext %28, i8 noundef signext %30, i8 noundef signext %32)
  store i8 %33, ptr %8, align 1
  %34 = load i8, ptr %8, align 1
  %35 = sext i8 %34 to i32
  br label %lt-tail-1

lt-clone-2-1:                                     ; preds = %lt-if-then-else-1
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca ptr, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i8, align 1
  store i32 0, ptr %36, align 4
  store i32 %argc, ptr %37, align 4
  store ptr %argv, ptr %38, align 8
  %44 = load ptr, ptr %38, align 8
  %45 = getelementptr inbounds ptr, ptr %44, i64 1
  %46 = load ptr, ptr %45, align 8
  %47 = call i32 @atoi(ptr noundef %46) #2
  store i32 %47, ptr %39, align 4
  %48 = load ptr, ptr %38, align 8
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = call i32 @atoi(ptr noundef %50) #2
  store i32 %51, ptr %40, align 4
  %52 = load ptr, ptr %38, align 8
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  %55 = call i32 @atoi(ptr noundef %54) #2
  store i32 %55, ptr %41, align 4
  %56 = load ptr, ptr %38, align 8
  %57 = getelementptr inbounds ptr, ptr %56, i64 4
  %58 = load ptr, ptr %57, align 8
  %59 = call i32 @atoi(ptr noundef %58) #2
  store i32 %59, ptr %42, align 4
  %60 = load i32, ptr %39, align 4
  %61 = trunc i32 %60 to i8
  %62 = load i32, ptr %40, align 4
  %63 = trunc i32 %62 to i8
  %64 = load i32, ptr %41, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i32, ptr %42, align 4
  %67 = trunc i32 %66 to i8
  %68 = call signext i8 @foo(i8 noundef signext %61, i8 noundef signext %63, i8 noundef signext %65, i8 noundef signext %67)
  store i8 %68, ptr %43, align 1
  %69 = load i8, ptr %43, align 1
  %70 = sext i8 %69 to i32
  br label %lt-tail-1

lt-tail-1:                                        ; preds = %lt-clone-2-1, %lt-clone-1-1
  %retval = phi ptr [ %1, %lt-clone-1-1 ], [ %36, %lt-clone-2-1 ]
  %argc.addr = phi ptr [ %2, %lt-clone-1-1 ], [ %37, %lt-clone-2-1 ]
  %argv.addr = phi ptr [ %3, %lt-clone-1-1 ], [ %38, %lt-clone-2-1 ]
  %a = phi ptr [ %4, %lt-clone-1-1 ], [ %39, %lt-clone-2-1 ]
  %b = phi ptr [ %5, %lt-clone-1-1 ], [ %40, %lt-clone-2-1 ]
  %c = phi ptr [ %6, %lt-clone-1-1 ], [ %41, %lt-clone-2-1 ]
  %d = phi ptr [ %7, %lt-clone-1-1 ], [ %42, %lt-clone-2-1 ]
  %ret = phi ptr [ %8, %lt-clone-1-1 ], [ %43, %lt-clone-2-1 ]
  %71 = phi ptr [ %9, %lt-clone-1-1 ], [ %44, %lt-clone-2-1 ]
  %arrayidx = phi ptr [ %10, %lt-clone-1-1 ], [ %45, %lt-clone-2-1 ]
  %72 = phi ptr [ %11, %lt-clone-1-1 ], [ %46, %lt-clone-2-1 ]
  %call = phi i32 [ %12, %lt-clone-1-1 ], [ %47, %lt-clone-2-1 ]
  %73 = phi ptr [ %13, %lt-clone-1-1 ], [ %48, %lt-clone-2-1 ]
  %arrayidx1 = phi ptr [ %14, %lt-clone-1-1 ], [ %49, %lt-clone-2-1 ]
  %74 = phi ptr [ %15, %lt-clone-1-1 ], [ %50, %lt-clone-2-1 ]
  %call2 = phi i32 [ %16, %lt-clone-1-1 ], [ %51, %lt-clone-2-1 ]
  %75 = phi ptr [ %17, %lt-clone-1-1 ], [ %52, %lt-clone-2-1 ]
  %arrayidx3 = phi ptr [ %18, %lt-clone-1-1 ], [ %53, %lt-clone-2-1 ]
  %76 = phi ptr [ %19, %lt-clone-1-1 ], [ %54, %lt-clone-2-1 ]
  %call4 = phi i32 [ %20, %lt-clone-1-1 ], [ %55, %lt-clone-2-1 ]
  %77 = phi ptr [ %21, %lt-clone-1-1 ], [ %56, %lt-clone-2-1 ]
  %arrayidx5 = phi ptr [ %22, %lt-clone-1-1 ], [ %57, %lt-clone-2-1 ]
  %78 = phi ptr [ %23, %lt-clone-1-1 ], [ %58, %lt-clone-2-1 ]
  %call6 = phi i32 [ %24, %lt-clone-1-1 ], [ %59, %lt-clone-2-1 ]
  %79 = phi i32 [ %25, %lt-clone-1-1 ], [ %60, %lt-clone-2-1 ]
  %conv = phi i8 [ %26, %lt-clone-1-1 ], [ %61, %lt-clone-2-1 ]
  %80 = phi i32 [ %27, %lt-clone-1-1 ], [ %62, %lt-clone-2-1 ]
  %conv7 = phi i8 [ %28, %lt-clone-1-1 ], [ %63, %lt-clone-2-1 ]
  %81 = phi i32 [ %29, %lt-clone-1-1 ], [ %64, %lt-clone-2-1 ]
  %conv8 = phi i8 [ %30, %lt-clone-1-1 ], [ %65, %lt-clone-2-1 ]
  %82 = phi i32 [ %31, %lt-clone-1-1 ], [ %66, %lt-clone-2-1 ]
  %conv9 = phi i8 [ %32, %lt-clone-1-1 ], [ %67, %lt-clone-2-1 ]
  %call10 = phi i8 [ %33, %lt-clone-1-1 ], [ %68, %lt-clone-2-1 ]
  %83 = phi i8 [ %34, %lt-clone-1-1 ], [ %69, %lt-clone-2-1 ]
  %conv11 = phi i32 [ %35, %lt-clone-1-1 ], [ %70, %lt-clone-2-1 ]
  ret i32 %conv11
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 88bf774c565080e30e0a073676c316ab175303af)"}
