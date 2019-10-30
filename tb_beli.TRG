TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `beli_barang` AFTER INSERT ON `tb_beli` FOR EACH ROW BEGIN\nINSERT INTO tb_barang SET\nid_barang = NEW.id_barang, jumlah=NEW.jumlah\nON DUPLICATE KEY UPDATE jumlah=jumlah+NEW.jumlah;\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER `batal_beli` AFTER DELETE ON `tb_beli` FOR EACH ROW UPDATE tb_barang\nSET jumlah = jumlah - OLD.jumlah\nWHERE\nid_barang = OLD.id_barang'
sql_modes=1098907648 1098907648
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci'
created=157232161087 157232673239
