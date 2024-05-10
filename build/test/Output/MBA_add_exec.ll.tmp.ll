; ModuleID = '<stdin>'
source_filename = "/home/madison.bradley/llvm-tutor/test/../inputs/input_for_mba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @foo(i8 noundef signext %a, i8 noundef signext %b, i8 noundef signext %c, i8 noundef signext %d) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %c.addr = alloca i8, align 1
  %d.addr = alloca i8, align 1
  %e = alloca i8, align 1
  %f = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
  store i8 %b, ptr %b.addr, align 1
  store i8 %c, ptr %c.addr, align 1
  store i8 %d, ptr %d.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, ptr %d.addr, align 1
  %conv1 = sext i8 %1 to i32
  %add = add nsw i32 %conv, %conv1
  %conv2 = trunc i32 %add to i8
  store i8 %conv2, ptr %e, align 1
  %2 = load i8, ptr %a.addr, align 1
  %conv3 = sext i8 %2 to i32
  %3 = load i8, ptr %b.addr, align 1
  %conv4 = sext i8 %3 to i32
  %add5 = add nsw i32 %conv3, %conv4
  %conv6 = trunc i32 %add5 to i8
  store i8 %conv6, ptr %f, align 1
  %4 = load i8, ptr %e, align 1
  %conv7 = sext i8 %4 to i32
  %5 = load i8, ptr %f, align 1
  %conv8 = sext i8 %5 to i32
  %add9 = add nsw i32 %conv7, %conv8
  %conv10 = trunc i32 %add9 to i8
  ret i8 %conv10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %ret = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 1
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr noundef %1) #2
  store i32 %call, ptr %a, align 4
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %2, i64 2
  %3 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @atoi(ptr noundef %3) #2
  store i32 %call2, ptr %b, align 4
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 3
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @atoi(ptr noundef %5) #2
  store i32 %call4, ptr %c, align 4
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %6, i64 4
  %7 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 @atoi(ptr noundef %7) #2
  store i32 %call6, ptr %d, align 4
  %8 = load i32, ptr %a, align 4
  %conv = trunc i32 %8 to i8
  %9 = load i32, ptr %b, align 4
  %conv7 = trunc i32 %9 to i8
  %10 = load i32, ptr %c, align 4
  %conv8 = trunc i32 %10 to i8
  %11 = load i32, ptr %d, align 4
  %conv9 = trunc i32 %11 to i8
  %call10 = call signext i8 @foo(i8 noundef signext %conv, i8 noundef signext %conv7, i8 noundef signext %conv8, i8 noundef signext %conv9)
  store i8 %call10, ptr %ret, align 1
  %12 = load i8, ptr %ret, align 1
  %conv11 = sext i8 %12 to i32
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
