module QrCodeHelper
  def qr_code_as_svg(uri)
    RQRCode::QRCode.new(uri).as_svg(
        offset: 10,
        color: "000",
        fill: "fff",
        shape_rendering: "crispEdges",
        module_size: 4,
        standalone: true
    ).html_safe
  end
end
