# Resize image for poster

Resize image for poster

## Usage

``` r
resize_image(
  templatefolder = "myfolder",
  image = "myprofile_image",
  size = 0.5,
  type = c("profile", "qrcode", "other")
)
```

## Arguments

- templatefolder:

  The name of the folder the template is in, which contains the images
  folder holding images.

- image:

  The full file name of the image

- size:

  The size value to be used by `imager::imsize()`

- type:

  Choice of "profile", "qrcode" or "other". This determines the name of
  the created resized image.
