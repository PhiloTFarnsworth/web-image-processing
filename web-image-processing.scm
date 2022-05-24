(define (web-image-processing filename)
  (
    let* (
      (image (car (gimp-file-load 1 (string-append filename ".xcf") (string-append filename ".xcf"))))
      (drawable (car (gimp-image-get-active-layer image))))
    (file-webp-save 1 image drawable (string-append filename ".webp") (string-append filename ".webp") 0 1 100 100 0 0 0 0 0 0 0 0 0)
    (file-heif-av1-save 1 image drawable (string-append filename ".avif") (string-append filename ".avif") 100 1)
    (file-png-save-defaults 1 image drawable (string-append filename ".png") (string-append filename ".png"))
    (gimp-image-delete image)
  )
)