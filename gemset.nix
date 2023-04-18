{
  google-protobuf = {
    groups = ["default"];
    platforms = [];
    source = null;
    targets = [{
      remotes = ["https://rubygems.org"];
      sha256 = "0gz9aypcp0sml98y6zahnvcrlcdphcnbikwb62a1gj826rg0n6na";
      target = "arm64-darwin";
      targetCPU = "arm64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "13r6jpj1frmvb0513ny90rf9b6m6gy4j935ww8985krrpgr8d9ml";
      target = "x86_64-darwin";
      targetCPU = "x86_64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1mbbh6bmydh0c9zm50bracgw44mzfv203qm5l57p3k2syvfsqlyn";
      target = "x86_64-linux";
      targetCPU = "x86_64";
      targetOS = "linux";
      type = "gem";
    }];
    version = "3.22.3";
  };
  googleapis-common-protos-types = {
    dependencies = ["google-protobuf"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "12w5bwaziz2iqb9dvgnskp2a7ifml6n4lyl9ypvnxj5bfrrwysap";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.5.0";
  };
  grpc = {
    dependencies = ["google-protobuf" "googleapis-common-protos-types"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0kj4j1g6l9v92k3byqyfq2kmawy12cj898daxqn1jsw0b458k0dh";
      target = "ruby";
      type = "gem";
    };
    targets = [{
      remotes = ["https://rubygems.org"];
      sha256 = "0djiay0aav3703xkipdzzdzlqy3payw4r56q6af5ybf46c09wi9r";
      target = "x86_64-darwin";
      targetCPU = "x86_64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0gvjm32rsbs7d05ysacndq10a9j2ik24q6nfa5bmqm5xipibfk89";
      target = "x86_64-linux";
      targetCPU = "x86_64";
      targetOS = "linux";
      type = "gem";
    }];
    version = "1.53.0";
  };
}