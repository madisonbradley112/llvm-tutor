; ModuleID = '/home/madison.bradley/llvm-tutor/test/customTestMBA.ll'
source_filename = "/home/madison.bradley/llvm-tutor/test/customTestMBA.ll"

define signext i8 @test(i8 signext %0, i8 signext %1, i8 signext %2, i8 signext %3) {
  %5 = and i8 %1, %0
  %6 = mul i8 2, %5
  %7 = xor i8 %1, %0
  %8 = add i8 %7, %6
  %9 = mul i8 39, %8
  %10 = add i8 23, %9
  %11 = mul i8 -105, %10
  %12 = add i8 111, %11
  ret i8 0
}
