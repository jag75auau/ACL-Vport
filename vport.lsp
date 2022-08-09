;VPORT By John Graham
; AutoLISP to create new viewport
; - Gets current layer
; - Checks for existing -VPORT layer
; - Creates the -VPORT layer if not found
; - Creates a new viewport
; - Returns to previous layer

(defun C:VPORT (/)
  
  ; Get current layer
  (setq Oldlayer (getvar "CLAYER"))
  
  ; Check for -VPORT layer and create if doesnt exist
  (if (= (tblsearch "LAYER" "-VPORT") nil)
    (command "_.-layer" "_M" "-VPORT" "_C" 6 "-VPORT" "_P" "_N" "-VPORT" "")
  )
  
  ; Set -VPORT layer
  (setvar "CLAYER" "-VPORT")
   
  ; Create a new scaled view port
  (command "MVIEW" "NEW")
  (while (= 1 (getvar "cmdactive"))
   (command pause))
  
  ; Return to the current layer
  (setvar "CLAYER" Oldlayer)
  
  (princ)
)