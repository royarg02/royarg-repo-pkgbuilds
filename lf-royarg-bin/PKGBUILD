# Maintainer: Anurag Roy <anuragr9847@gmail.com>
_pkgname='lf'
pkgname="$_pkgname-royarg-bin"
pkgver=28
pkgrel=1
pkgdesc='A terminal file manager inspired by ranger(precompiled binary)'
arch=('i686' 'x86_64' 'armv7h')
url="https://github.com/gokcehan/$_pkgname"
license=('MIT')
provides=('lf')
conflicts=("$_pkgname" "$_pkgname-bin")
source=("$url/raw/r$pkgver/lf.1"
        "$url/raw/r$pkgver/lf.desktop"
        "$url/raw/r$pkgver/LICENSE")
source_i686=("$_pkgname-$pkgver-linux-386.tar.gz::${url}/releases/download/r${pkgver}/lf-linux-386.tar.gz")
source_x86_64=("$_pkgname-$pkgver-linux-amd64.tar.gz::${url}/releases/download/r${pkgver}/lf-linux-amd64.tar.gz")
source_armv7h=("$_pkgname-$pkgver.linux-arm.tar.gz::${url}/releases/download/r${pkgver}/lf-linux-arm.tar.gz")
sha256sums=('4e256c47533ec4afd4150b059c202daed94de3ad2f58a2c61646f8b3993194d0'
            '8435d4ac067dc81aedacc2cbc67d72449e39027ff3ec55d2b3910f3712dd1f74'
            '077f3c8aa73a4886221438f9df5c1551baab43c6a0f2e7cddf56f436e8b63480')
sha256sums_i686=('33cb113e8aabd97241165f707305e6339fc2c38f0a67e6f412216d41b1535ef9')
sha256sums_x86_64=('4ef583838437fe1f4a3dcec78c96679c6b79e2e5405432efe9baa7ee341746c5')
sha256sums_armv7h=('236422b23952b1e5cbacde04a65b8cf888e3eec8a4a7f64b94a9f838aa3ab2b4')

package() {
  install -Dm755 -t "$pkgdir/usr/bin" "lf"
  install -Dm644 -t "$pkgdir/usr/share/man/man1" "lf.1"
  install -Dm644 -t "$pkgdir/usr/share/applications" "lf.desktop"
  install -Dm644 -t "${pkgdir}/usr/share/licenses/${pkgname}" "LICENSE"
}
