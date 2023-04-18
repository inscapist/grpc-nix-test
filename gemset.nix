{
  addressable = {
    dependencies = ["public_suffix"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15s8van7r2ad3dq6i03l3z4hqnvxcq75a3h72kxvf9an53sqma20";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.8.4";
  };
  eventmachine = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wh9aqb0skz80fhfn66lbpr4f86ya2z5rx6gm5xlfhd05bj1ch4r";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.2.7";
  };
  faraday = {
    dependencies = ["faraday-net_http" "ruby2_keywords"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1f20vjx0ywx0zdb4dfx4cpa7kd51z6vg7dw5hs35laa45dy9g9pj";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.7.4";
  };
  faraday-net_http = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "13byv3mp1gsjyv8k0ih4612y6vw5kqva6i03wcg4w2fqpsd950k8";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.2";
  };
  faraday-retry = {
    dependencies = ["faraday"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zz0w4jpfa6h1wlirfcs9hzvlpijnd1nnmjq94w5yv50585p279n";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.1.0";
  };
  gapic-common = {
    dependencies = ["faraday" "faraday-retry" "google-protobuf" "googleapis-common-protos" "googleapis-common-protos-types" "googleauth" "grpc"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1awn2k5b2sji74vr0xhg0v68h1y0msqpkwq5z8k31mp2ii9mmmbg";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.18.0";
  };
  google-cloud-core = {
    dependencies = ["google-cloud-env" "google-cloud-errors"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0amp8vd16pzbdrfbp7k0k38rqxpwd88bkyp35l3x719hbb6l85za";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.6.0";
  };
  google-cloud-document_ai = {
    dependencies = ["google-cloud-core" "google-cloud-document_ai-v1" "google-cloud-document_ai-v1beta3"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04z8pfnwm5py1sw5j9ds249brnixmb22phrzjm6gjnpdj26gidlr";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.2.1";
  };
  google-cloud-document_ai-v1 = {
    dependencies = ["gapic-common" "google-cloud-errors" "google-cloud-location"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0s6j36mgjb3rx6ry40b6k2yibns0r0g3bfvlf5s4b0zl6zyyh087";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.11.0";
  };
  google-cloud-document_ai-v1beta3 = {
    dependencies = ["gapic-common" "google-cloud-errors" "google-cloud-location"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "12mld1x8yj2acapdd3q3zkbjm49al96plsk5i41jza80caprrxjy";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.22.0";
  };
  google-cloud-env = {
    dependencies = ["faraday"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "05gshdqscg4kil6ppfzmikyavsx449bxyj47j33r4n4p8swsqyb1";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.6.0";
  };
  google-cloud-errors = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0flpj7v196c3xsqx4yjb7rjcj8p0by4rhj6qf5zanw4p1i41ssf0";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.3.1";
  };
  google-cloud-location = {
    dependencies = ["gapic-common" "google-cloud-errors"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0x8xf27sx7i9cscjmaq2r9sxmqfl7zdshm21g0z7kbybfw0c5izf";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.4.0";
  };
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
  googleapis-common-protos = {
    dependencies = ["google-protobuf" "googleapis-common-protos-types" "grpc"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10p3kl9xdxl4xsijkj2l6qn525xchkbfhx3ch603ammibbxq08ys";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.4.0";
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
  googleauth = {
    dependencies = ["faraday" "jwt" "memoist" "multi_json" "os" "signet"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lj5haarpn7rybbq9s031zcn9ji3rlz5bk64bwa2j34q5s1h5gis";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.5.2";
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
  jwt = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "09yj3z5snhaawh2z1w45yyihzmh57m6m7dp8ra8gxavhj5kbiq5p";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.7.0";
  };
  memoist = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0i9wpzix3sjhf6d9zw60dm4371iq8kyz7ckh2qapan2vyaim6b55";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.16.2";
  };
  multi_json = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0pb1g1y3dsiahavspyzkdy39j4q377009f6ix0bh1ag4nqw43l0z";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.15.0";
  };
  os = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gwd20smyhxbm687vdikfh1gpi96h8qb1x28s2pdcysf6dm6v0ap";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.4";
  };
  public_suffix = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hz0bx2qs2pwb0bwazzsah03ilpf3aai8b7lk7s35jsfzwbkjq35";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.0.1";
  };
  ruby2_keywords = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vz322p8n39hz3b4a9gkmz9y7a5jaz41zrm2ywf31dvkqm03glgz";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.0.5";
  };
  signet = {
    dependencies = ["addressable" "faraday" "jwt" "multi_json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0100rclkhagf032rg3r0gf3f4znrvvvqrimy6hpa73f21n9k2a0x";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.17.0";
  };
}