const FormData = require("form-data");
const axios = require("axios");
const ref = "ref_BQMX4AICHZZ16998422432294695";
const encryp = "MSFT_Enc_0SB5F0P56BPLPNB3UTDUYDOBOBJQFEB";

let formdata = new FormData();
formdata.append("enc_key", encryp);
formdata.append("transaction_ref", ref);

let requestOptions = {
  method: "POST",
  body: formdata,
  redirect: "follow"
};

axios
  .post("https://api.marasoftpay.live/checktransaction", formdata)
  //   .then((response) => response.text())
  .then((result) => console.log(result.data))
  .catch((error) => console.log("error", error));
