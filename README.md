# Eduroam AAI@EduHr

eduroam.sh is a shell script for connecting to Croatia's [AAI@EduHr](https://www.aaiedu.hr/) eduroam service with [NetworkManager](https://www.networkmanager.dev/).

## Usage

Before running the script, install the provided CA certificate if needed:

```
sudo trust anchor --store ca.skole.hr.der
```

Then run the script `eduroam.sh`:

```
./eduroam.sh
```
