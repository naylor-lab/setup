Termux instalado – baixe da F-Droid ou da Play Store (versão mais recente).
Permissão para instalar apps de fontes desconhecidas – vá em Configurações → Segurança e ative “Instalar apps de fontes desconhecidas” (ou “Instalar apps de fontes externas”).
Acesso root (opcional) – não é obrigatório, mas facilita algumas operações (por exemplo, mover o apk para /system/app).


Passo a passo

Abra o Termux e atualize os repositórios:

 pkg update && pkg upgrade -y

*Instale os pacotes necessários – wget ou curl para baixar o arquivo, e apksigner (via openjdk) caso queira verificar a assinatura:

 pkg install wget curl unzip proot -y

Baixe o APK – substitua <URL_DO_APK> pelo link direto do arquivo que deseja instalar:

 wget <URL_DO_APK> -O /data/com.termux/files/home/meu_app.apk
 # ou, usando curl:
# curl -L <URL_DO_APK> -o meu_app.apk

Verifique (opcional) a integridade – se tiver o hash SHA256 do arquivo, compare:

 sha256sum meu_app.apk

Instale o APK – o Termux tem acesso ao comando pm (Package Manager) através do app_process. Use o seguinte:

 pm install -r meu_app.apk
 ``

 - `-r` força a reinstalação caso o app já exista.  
 - Se receber “Permission denied”, execute o comando com `su` (necessita de root):  

  ```bash
 su -c "pm install -r /data/com.termux/files/home/meu_app.apk"
  ```

6. **Confirme a instalação** – abra a gaveta de aplicativos e procure pelo nome do app recém‑instalado. Ele deve aparecer normalmente.

---

### Dicas adicionais

- **Instalação silenciosa** (sem solicitar permissão ao usuário) só funciona se o Termux estiver rodando como **root** ou se o app for um **APK de sistema**. Caso contrário, o Android exibirá a caixa de diálogo padrão de confirmação.
- **Desinstalar** um app instalado via Termux:  

```bash
pm uninstall <nome.do.pacote>

Gerenciar permissões depois da instalação (ex.: câmera, localização):

 pm grant <nome.do.pacote> android.permission.CAMERA
 pm grant <nome.do.pacote> android.permission.ACCESS_FINE_LOCATION

Armazenamento interno – se precisar mover o APK para outra pasta (por exemplo, /sdcard/Download), use mv ou cp:

 cp meu_app.apk /sdcard/Download/


