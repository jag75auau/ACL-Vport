# ACL-Vport
AutoCAD LISP Vport - Creates a new viewport in the -VPORT layer

This routine will:-
1. Get current layer name.
2. Check for layer -VPORT
3. If not found create new layer -VPORT (Layer has plot turned off by defualt).
4. Change to layer -VPORT.
5. Create a new viewport in the -VPORT layer.
6. Return to the previous layer.
