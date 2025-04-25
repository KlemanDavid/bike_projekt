@component('mail::message')
# Új felhasználó regisztrált

Egy új felhasználó regisztrált a rendszerbe az alábbi adatokkal:

- **Teljes név:** {{ $name }}
- **Felhasználónév:** {{ $username }}
- **E‑mail cím:** {{ $email }}

@endcomponent
