#' @export
resize_image <- function(
  templatefolder = myfolder,
  image = myprofile_image,
  size = .5,
  type = c("profile", "qrcode")
) {
  image <- here(templatefolder, "images", image)
  new_image <- load.image(here(image))
  new_image <- imresize(new_image, size)
  if (type == "profile") {
    save.image(new_image, here(templatefolder, "images", "profilenew.png"))
  } else {
    save.image(new_image, here(templatefolder, "images", "qrcodenew.png"))
  }
}
