json.array! (@products) do |product|
	json.title	 			product.product_name
	json.barcode			product.barcode
	json.stok					product.stok
	json.harga_jual 	product.harga_jual
	json.url_picture	product.url_picture
end