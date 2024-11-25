(defun transformar (x)
  (if (>= x 4)
      (* x x)  ; Multiplica o elemento por ele mesmo
      (/ x 2))) ; Divide o elemento por 2

(let ((lista1 '(1 2 3))
      (lista2 '(4 5 6)))
  (append
   (mapcar #'transformar lista1)
   (mapcar #'transformar lista2)))
