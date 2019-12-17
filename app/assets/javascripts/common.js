function layer_tip(title, html, options={}){
  opts = {
    title: title,
    shadeClose: true,
    shade: 0.8,
    skin: "common-class",
    closeBtn: 0,
    offset: "100px",
    content: html
  }
  time = parseInt(options["time"])
  if (!isNaN(time)){
    opts["time"] = time
  }
  layer.open(opts);
}