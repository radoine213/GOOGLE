function verifyCode() {
  const code = document.getElementById('codeInput').value;
  const result = document.getElementById('resultMessage');

  if (code.trim() === '') {
    result.textContent = 'الرجاء إدخال كود التحقق';
  } else if (code === '1234') { // مثال على كود صحيح
    result.textContent = 'تم التحقق بنجاح';
    result.style.color = 'green';
  } else {
    result.textContent = 'كود التحقق غير صحيح';
    result.style.color = 'red';
  }
}