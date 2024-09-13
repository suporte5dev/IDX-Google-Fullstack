{ pkgs, ... }: {
  # Qual canal do nixpkgs usar.
  channel = "stable-23.11"; # ou "unstable"
  
  # Use https://search.nixos.org/packages para encontrar pacotes
  packages = [
    pkgs.nodejs_20
    pkgs.php74
    pkgs.mysql
    pkgs.openjdk11
    pkgs.maven
    pkgs.phpmyadmin
  ];

  # Define variáveis de ambiente no workspace
  env = {
    MYSQL_ROOT_PASSWORD = "rootpassword";
    MYSQL_DATABASE = "mydatabase";
    JAVA_HOME = "/usr/lib/jvm/java-11-openjdk";
  };

  idx = {
    # Extensões do VSCode que serão instaladas automaticamente no IDX
    extensions = [
      "msjsdiag.vscode-react-native"
      "esbenp.prettier-vscode"
      "dbaeumer.vscode-eslint"
      "vscjava.vscode-java-pack"
      "felixfbecker.php-debug"
      "eamodio.gitlens"
    ];

    workspace = {
      # O que acontece quando o workspace é criado
      onCreate = {
        install = ''
          npm ci --prefer-offline --no-audit --no-progress --timing;
          mvn clean install;
          composer install;
        '';
      };
      
      # O que acontece quando o workspace é reiniciado
      onStart = {
        start-web-server = ''
          apachectl start
        '';
        start-nodejs = ''
          cd /workspace/nodejs_app && npm start
        '';
        start-springboot = ''
          cd /workspace/springboot_jfx && mvn spring-boot:run
        '';
      };
    };

    # Habilitar e configurar previews
    previews = {
      enable = true;
      previews = {
        nextjs = {
          command = ["npm" "run" "dev" "--" "--port" "$PORT"];
          manager = "web";
        };
        nodejs = {
          command = ["npm" "start"];
          manager = "web";
        };
        php = {
          command = ["apachectl" "start"];
          manager = "web";
        };
        springboot = {
          command = ["mvn" "spring-boot:run"];
          manager = "web";
        };
      };
    };
  };
}
