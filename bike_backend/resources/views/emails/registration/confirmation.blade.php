@component('mail::message')
# Üdvözlünk a BikeApp‑ban, {{ $name }}!

Sikeresen regisztráltál az alábbi adatokkal:

- **Teljes név:** {{ $name }}
- **Felhasználónév:** {{ $username }}
- **E‑mail cím:** {{ $email }}

Köszönjük, hogy csatlakoztál!  
Ha bármiben segíthetünk, írj nekünk.

Üdvözlettel,<br>
**BikeApp Csapata**
@endcomponent
