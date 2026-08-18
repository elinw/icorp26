#' Resize image for poster
#'
#' @param templatefolder The name of the folder the template is in, which
#' contains the images folder holding images.
#' @param image  The full file name of the image
#' @param size  The size value to be used by `imager::imsize()`
#' @param type  Choice of "profile", "qrcode" or "other". This determines
#' the name of the created resized image.
#'
#'
#' @export
resize_image <- function(
  templatefolder = "myfolder",
  image = "myprofile_image",
  size = .5,
  type = c("profile", "qrcode", "other")
) {
  image <- here::here(templatefolder, "images", image)

  if (!file.exists(image)) {
    stop(cat(image, " does not exist. Please check the name."))
  }
  new_image <- imager::load.image(image)
  new_image <- imager::imresize(new_image, size)

  if (type == "profile") {
    imager::save.image(
      new_image,
      here::here(templatefolder, "images", "profilenew.png")
    )
  } else if (type == "qrcode") {
    imager::save.image(
      new_image,
      here::here(templatefolder, "images", "qrcodenew.png")
    )
  } else if (type == "other") {
    imager::save.image(
      new_image,
      here::here(templatefolder, "images", "other.png")
    )
  }
}
