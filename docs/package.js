(function(pkg) {
  (function() {
  var annotateSourceURL, cacheFor, circularGuard, defaultEntryPoint, fileSeparator, generateRequireFn, global, isPackage, loadModule, loadPackage, loadPath, normalizePath, rootModule, startsWith,
    __slice = [].slice;

  fileSeparator = '/';

  global = window;

  defaultEntryPoint = "main";

  circularGuard = {};

  rootModule = {
    path: ""
  };

  loadPath = function(parentModule, pkg, path) {
    var cache, localPath, module, normalizedPath;
    if (startsWith(path, '/')) {
      localPath = [];
    } else {
      localPath = parentModule.path.split(fileSeparator);
    }
    normalizedPath = normalizePath(path, localPath);
    cache = cacheFor(pkg);
    if (module = cache[normalizedPath]) {
      if (module === circularGuard) {
        throw "Circular dependency detected when requiring " + normalizedPath;
      }
    } else {
      cache[normalizedPath] = circularGuard;
      try {
        cache[normalizedPath] = module = loadModule(pkg, normalizedPath);
      } finally {
        if (cache[normalizedPath] === circularGuard) {
          delete cache[normalizedPath];
        }
      }
    }
    return module.exports;
  };

  normalizePath = function(path, base) {
    var piece, result;
    if (base == null) {
      base = [];
    }
    base = base.concat(path.split(fileSeparator));
    result = [];
    while (base.length) {
      switch (piece = base.shift()) {
        case "..":
          result.pop();
          break;
        case "":
        case ".":
          break;
        default:
          result.push(piece);
      }
    }
    return result.join(fileSeparator);
  };

  loadPackage = function(pkg) {
    var path;
    path = pkg.entryPoint || defaultEntryPoint;
    return loadPath(rootModule, pkg, path);
  };

  loadModule = function(pkg, path) {
    var args, context, dirname, file, module, program, values;
    if (!(file = pkg.distribution[path])) {
      throw "Could not find file at " + path + " in " + pkg.name;
    }
    program = annotateSourceURL(file.content, pkg, path);
    dirname = path.split(fileSeparator).slice(0, -1).join(fileSeparator);
    module = {
      path: dirname,
      exports: {}
    };
    context = {
      require: generateRequireFn(pkg, module),
      global: global,
      module: module,
      exports: module.exports,
      PACKAGE: pkg,
      __filename: path,
      __dirname: dirname
    };
    args = Object.keys(context);
    values = args.map(function(name) {
      return context[name];
    });
    Function.apply(null, __slice.call(args).concat([program])).apply(module, values);
    return module;
  };

  isPackage = function(path) {
    if (!(startsWith(path, fileSeparator) || startsWith(path, "." + fileSeparator) || startsWith(path, ".." + fileSeparator))) {
      return path.split(fileSeparator)[0];
    } else {
      return false;
    }
  };

  generateRequireFn = function(pkg, module) {
    if (module == null) {
      module = rootModule;
    }
    if (pkg.name == null) {
      pkg.name = "ROOT";
    }
    if (pkg.scopedName == null) {
      pkg.scopedName = "ROOT";
    }
    return function(path) {
      var otherPackage;
      if (isPackage(path)) {
        if (!(otherPackage = pkg.dependencies[path])) {
          throw "Package: " + path + " not found.";
        }
        if (otherPackage.name == null) {
          otherPackage.name = path;
        }
        if (otherPackage.scopedName == null) {
          otherPackage.scopedName = "" + pkg.scopedName + ":" + path;
        }
        return loadPackage(otherPackage);
      } else {
        return loadPath(module, pkg, path);
      }
    };
  };

  if (typeof exports !== "undefined" && exports !== null) {
    exports.generateFor = generateRequireFn;
  } else {
    global.Require = {
      generateFor: generateRequireFn
    };
  }

  startsWith = function(string, prefix) {
    return string.lastIndexOf(prefix, 0) === 0;
  };

  cacheFor = function(pkg) {
    if (pkg.cache) {
      return pkg.cache;
    }
    Object.defineProperty(pkg, "cache", {
      value: {}
    });
    return pkg.cache;
  };

  annotateSourceURL = function(program, pkg, path) {
    return "" + program + "\n//# sourceURL=" + pkg.scopedName + "/" + path;
  };

}).call(this);

//# sourceURL=main.coffee
  window.require = Require.generateFor(pkg);
})({
  "source": {
    "LICENSE": {
      "mode": "100644",
      "type": "blob",
      "sha": "abd0cae3d527df38ed433e0977fa024217ffd2dc",
      "path": "LICENSE",
      "size": 1080,
      "url": "https://api.github.com/repos/STRd6/testin4/git/blobs/abd0cae3d527df38ed433e0977fa024217ffd2dc",
      "content": "The MIT License (MIT)\n\nCopyright (c) 2014 Daniel X Moore\n\nPermission is hereby granted, free of charge, to any person obtaining a copy\nof this software and associated documentation files (the \"Software\"), to deal\nin the Software without restriction, including without limitation the rights\nto use, copy, modify, merge, publish, distribute, sublicense, and/or sell\ncopies of the Software, and to permit persons to whom the Software is\nfurnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all\ncopies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\nIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\nFITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\nAUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\nLIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\nOUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\nSOFTWARE.",
      "encoding": "raw",
      "modified": false,
      "initialSha": "abd0cae3d527df38ed433e0977fa024217ffd2dc"
    },
    "README.md": {
      "mode": "100644",
      "type": "blob",
      "sha": "2d078bcd8f1a549d4f6f1cb5cc49a5563a6277c0",
      "path": "README.md",
      "size": 22,
      "url": "https://api.github.com/repos/STRd6/testin4/git/blobs/2d078bcd8f1a549d4f6f1cb5cc49a5563a6277c0",
      "content": "testin4\n=======\n\nyolo\n",
      "encoding": "raw",
      "modified": false,
      "initialSha": "2d078bcd8f1a549d4f6f1cb5cc49a5563a6277c0"
    },
    "main.coffee.md": {
      "path": "main.coffee.md",
      "content": "\n\n    alert \"herrooo???\"\n",
      "modified": false,
      "mode": "100644",
      "initialSha": "e69de29bb2d1d6434b8b29ae775ad8c2e48c5391",
      "sha": "9d7bc71ab45719fca8681dcbf57c8244e3de5dce"
    }
  },
  "distribution": {
    "main": {
      "path": "main",
      "content": "(function() {\n  alert(\"herrooo???\");\n\n}).call(this);\n",
      "type": "blob"
    }
  },
  "progenitor": {
    "url": "http://strd6.github.io/editor/"
  },
  "entryPoint": "main",
  "repository": {
    "id": 18618174,
    "name": "testin4",
    "full_name": "STRd6/testin4",
    "owner": {
      "login": "STRd6",
      "id": 18894,
      "avatar_url": "https://avatars.githubusercontent.com/u/18894?",
      "gravatar_id": "33117162fff8a9cf50544a604f60c045",
      "url": "https://api.github.com/users/STRd6",
      "html_url": "https://github.com/STRd6",
      "followers_url": "https://api.github.com/users/STRd6/followers",
      "following_url": "https://api.github.com/users/STRd6/following{/other_user}",
      "gists_url": "https://api.github.com/users/STRd6/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/STRd6/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/STRd6/subscriptions",
      "organizations_url": "https://api.github.com/users/STRd6/orgs",
      "repos_url": "https://api.github.com/users/STRd6/repos",
      "events_url": "https://api.github.com/users/STRd6/events{/privacy}",
      "received_events_url": "https://api.github.com/users/STRd6/received_events",
      "type": "User",
      "site_admin": false
    },
    "private": false,
    "html_url": "https://github.com/STRd6/testin4",
    "description": "yolo",
    "fork": false,
    "url": "https://api.github.com/repos/STRd6/testin4",
    "forks_url": "https://api.github.com/repos/STRd6/testin4/forks",
    "keys_url": "https://api.github.com/repos/STRd6/testin4/keys{/key_id}",
    "collaborators_url": "https://api.github.com/repos/STRd6/testin4/collaborators{/collaborator}",
    "teams_url": "https://api.github.com/repos/STRd6/testin4/teams",
    "hooks_url": "https://api.github.com/repos/STRd6/testin4/hooks",
    "issue_events_url": "https://api.github.com/repos/STRd6/testin4/issues/events{/number}",
    "events_url": "https://api.github.com/repos/STRd6/testin4/events",
    "assignees_url": "https://api.github.com/repos/STRd6/testin4/assignees{/user}",
    "branches_url": "https://api.github.com/repos/STRd6/testin4/branches{/branch}",
    "tags_url": "https://api.github.com/repos/STRd6/testin4/tags",
    "blobs_url": "https://api.github.com/repos/STRd6/testin4/git/blobs{/sha}",
    "git_tags_url": "https://api.github.com/repos/STRd6/testin4/git/tags{/sha}",
    "git_refs_url": "https://api.github.com/repos/STRd6/testin4/git/refs{/sha}",
    "trees_url": "https://api.github.com/repos/STRd6/testin4/git/trees{/sha}",
    "statuses_url": "https://api.github.com/repos/STRd6/testin4/statuses/{sha}",
    "languages_url": "https://api.github.com/repos/STRd6/testin4/languages",
    "stargazers_url": "https://api.github.com/repos/STRd6/testin4/stargazers",
    "contributors_url": "https://api.github.com/repos/STRd6/testin4/contributors",
    "subscribers_url": "https://api.github.com/repos/STRd6/testin4/subscribers",
    "subscription_url": "https://api.github.com/repos/STRd6/testin4/subscription",
    "commits_url": "https://api.github.com/repos/STRd6/testin4/commits{/sha}",
    "git_commits_url": "https://api.github.com/repos/STRd6/testin4/git/commits{/sha}",
    "comments_url": "https://api.github.com/repos/STRd6/testin4/comments{/number}",
    "issue_comment_url": "https://api.github.com/repos/STRd6/testin4/issues/comments/{number}",
    "contents_url": "https://api.github.com/repos/STRd6/testin4/contents/{+path}",
    "compare_url": "https://api.github.com/repos/STRd6/testin4/compare/{base}...{head}",
    "merges_url": "https://api.github.com/repos/STRd6/testin4/merges",
    "archive_url": "https://api.github.com/repos/STRd6/testin4/{archive_format}{/ref}",
    "downloads_url": "https://api.github.com/repos/STRd6/testin4/downloads",
    "issues_url": "https://api.github.com/repos/STRd6/testin4/issues{/number}",
    "pulls_url": "https://api.github.com/repos/STRd6/testin4/pulls{/number}",
    "milestones_url": "https://api.github.com/repos/STRd6/testin4/milestones{/number}",
    "notifications_url": "https://api.github.com/repos/STRd6/testin4/notifications{?since,all,participating}",
    "labels_url": "https://api.github.com/repos/STRd6/testin4/labels{/name}",
    "releases_url": "https://api.github.com/repos/STRd6/testin4/releases{/id}",
    "created_at": "2014-04-10T00:21:57Z",
    "updated_at": "2014-04-10T00:21:57Z",
    "pushed_at": "2014-04-10T00:21:57Z",
    "git_url": "git://github.com/STRd6/testin4.git",
    "ssh_url": "git@github.com:STRd6/testin4.git",
    "clone_url": "https://github.com/STRd6/testin4.git",
    "svn_url": "https://github.com/STRd6/testin4",
    "homepage": null,
    "size": 0,
    "stargazers_count": 0,
    "watchers_count": 0,
    "language": null,
    "has_issues": true,
    "has_downloads": true,
    "has_wiki": true,
    "forks_count": 0,
    "mirror_url": null,
    "open_issues_count": 0,
    "forks": 0,
    "open_issues": 0,
    "watchers": 0,
    "default_branch": "master",
    "master_branch": "master",
    "permissions": {
      "admin": true,
      "push": true,
      "pull": true
    },
    "network_count": 0,
    "subscribers_count": 1,
    "branch": "master",
    "publishBranch": "gh-pages"
  },
  "dependencies": {}
});