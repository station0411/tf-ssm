variable "region" {
  default     = "ap-northeast-1"
  description = "Base region."
}

variable "availability_zone" {
  default = {
    ap_northeast_1 = {
      ap_northeast_1a = "ap-northeast-1a"
      ap_northeast_1c = "ap-northeast-1c"
      ap_northeast_1d = "ap-northeast-1d"
    }
  }
  description = "Availability zone name."
}

variable "terraform" {
  default     = "tf-ssm"
  description = "Sample name."
}