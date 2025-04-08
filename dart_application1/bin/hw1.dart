int sumDigits(int num) {
  bool isNegative = num < 0; // 입력된 값이 음수인지 확인
  int sum = 0;

  num = num.abs(); // 절댓값 계산

  while (num > 0) {
    // 양수일때만 각 자릿수 더하기
    sum = sum + num % 10; // 마지막 자릿수 더하기
    num = num ~/ 10; // 10으로 나누고, 소수점 버림
  }

  return isNegative ? -sum : sum; // 음수의 입력 : 음수 출력 (처음에 절댓값으로 바꿨었음)
}

void main() {
  print(sumDigits(123));
  print(sumDigits(5));
  print(sumDigits(-1));
  print(sumDigits(-123));
  print(sumDigits(345321));
}
