class Login {
  int? status;
  dynamic message;
  Data? data;
  dynamic error;

  Login({this.status, this.message, this.data, this.error});

  Login.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data?.fromJson(json['data']) : null;
    error = json['error'];
  }
}

class Data {
  String? iduserAkses;
  String? nama;
  dynamic alamat;
  dynamic noTelp;
  String? username;
  String? jenisUser;
  String? idjabatan;
  String? tanggalInput;
  String? cekDiskon;
  String? cekDelTransaksi;
  String? cekEditMaster;
  String? cekHargaBeliPenjualan;
  dynamic nomerAbsen;
  String? tokenLogin;
  String? expTokenLogin;

  Data(
      {this.iduserAkses,
      this.nama,
      this.alamat,
      this.noTelp,
      this.username,
      this.jenisUser,
      this.idjabatan,
      this.tanggalInput,
      this.cekDiskon,
      this.cekDelTransaksi,
      this.cekEditMaster,
      this.cekHargaBeliPenjualan,
      this.nomerAbsen,
      this.tokenLogin,
      this.expTokenLogin});

  Data.fromJson(Map<String, dynamic> json) {
    iduserAkses = json['iduser_akses'];
    nama = json['nama'];
    alamat = json['alamat'];
    noTelp = json['no_telp'];
    username = json['username'];
    jenisUser = json['jenis_user'];
    idjabatan = json['idjabatan'];
    tanggalInput = json['tanggal_input'];
    cekDiskon = json['cek_diskon'];
    cekDelTransaksi = json['cek_del_transaksi'];
    cekEditMaster = json['cek_edit_master'];
    cekHargaBeliPenjualan = json['cek_harga_beli_penjualan'];
    nomerAbsen = json['nomer_absen'];
    tokenLogin = json['token_login'];
    expTokenLogin = json['exp_token_login'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['iduser_akses'] = iduserAkses;
    data['nama'] = nama;
    data['alamat'] = alamat;
    data['no_telp'] = noTelp;
    data['username'] = username;
    data['jenis_user'] = jenisUser;
    data['idjabatan'] = idjabatan;
    data['tanggal_input'] = tanggalInput;
    data['cek_diskon'] = cekDiskon;
    data['cek_del_transaksi'] = cekDelTransaksi;
    data['cek_edit_master'] = cekEditMaster;
    data['cek_harga_beli_penjualan'] = cekHargaBeliPenjualan;
    data['nomer_absen'] = nomerAbsen;
    data['token_login'] = tokenLogin;
    data['exp_token_login'] = expTokenLogin;
    return data;
  }
}
