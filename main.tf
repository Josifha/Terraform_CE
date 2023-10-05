data "google_compute_image" "image" {
  name    = "${var.image_name}"
  project = "${var.image_family}"
}

resource "google_compute_instance" "default" {
  name         = "${var.instance_name}"
  machine_type = "${var.machine_type}"
  tags         = "${var.tags}"
  zone         = "${var.region}"
  allow_stopping_for_update = true

  labels = {
    environment = "dev"
    #role = "mongodb"
  }

  boot_disk {
    initialize_params {
      image = "${data.google_compute_image.image.self_link}"
    }
  }

 network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    subnetwork = "default"
  }
}
output "ip" {
  value = google_compute_instance.default.instance_id
}
