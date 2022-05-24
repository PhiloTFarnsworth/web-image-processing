# web-image-processing-GIMP
A simple script to create .PNG, .AVIF and .WebP files from an .xcf Gimp image file

## Utility
This script is useful to create multiple forms of the same media, which can be a concern in web development.  WebP and AVIF files are optimized for
delivery over the internet and PNG is a widely accepted lossless format.  By utilizing multiple formats, you can help optimize your user's experience, regardless of the browser the user chooses.

For examples of how to utilize these images using HTML, check out the [Picture Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/picture).

## Requirements
- GNU Image Manipulation Program
- Add web-image-processing.scm to your GIMP scripts folder (```share/gimp/2.0/scripts```)

## Tutorial
Begin by creating or importing an image using GIMP.  Provide any adjustments (cropping, etc.) that are necessary for the image, then save as a GIMP image (.xcf) in a directory.  Navigate using your command prompt to that image's directory, and run the following command (Windows):

``` gimp-2.10 -i -b "(web-image-processing \"{{filename}}\")" -b "(gimp-quit 0)" ```

where {{filename}} is replaced by the name of GIMP image without the file extension.
