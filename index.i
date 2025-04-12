<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Diskon</title>
  <style>
    body { font-family: sans-serif; background: #eee; padding: 40px; }
    .box { max-width: 360px; margin: auto; background: #fff; padding: 20px; border-radius: 8px }
    input, button { width: 100%; padding: 10px; margin: 8px 0 }
    button { background: green; color: #fff; border: none; }
    .result { text-align: center; font-weight: bold; }
  </style>
</head>
<body>
<div class="box">
  <h3>Hitung Diskon</h3>
  <input id="harga" placeholder="Harga Awal" oninput="this.value=this.value.replace(/\D/g,'').replace(/\B(?=(\d{3})+(?!\d))/g,'.')">
  <input id="diskon" placeholder="Diskon %">
  <button onclick="hitung()">Hitung</button>
  <div class="result" id="hasil"></div>
</div>
<script>
  const format = n => new Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR" }).format(n);
  const hitung = () => {
    let h = +harga.value.replace(/\D/g,''), d = +diskon.value;
    if (!h || d < 0 || d > 100) return alert("Input tidak valid!");
    hasil.innerHTML = `Harga Awal: ${format(h)}<br>Setelah Diskon: ${format(h - h * d / 100)}`;
  };
</script>
</body>
</html>
