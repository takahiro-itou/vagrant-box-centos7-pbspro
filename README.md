# vagrant-box-centos7-pbspro

PBS Pro をインストールした CentOS 7.7

## ボックスを自前で作成する

### クローン

```bash
git clone https://gitlab.com/takahiro-itou/vagrant-box-centos7-pbspro.git
cd  vagrant-box-centos7-pbspro
```

### ボックス作成

```bash
./setup.sh
```

### 作成したボックスを登録する。

```bash
vagrant box add  --name <yourname>/centos7-pbspro  centos7-pbspro.box
```

## 作成済みのボックスをダウンロードして使う

takahiro-itou/centos7-pbspro
- https://app.vagrantup.com/takahiro-itou/boxes/centos7-pbspro

