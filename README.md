# ExFirebase

Firebase Admin SDK in Elixir

[Documentation](https://hexdocs.pm/ex_firebase/ExFirebase.html)

## Installation

Install from Hex

```elixir
def deps do
 [{:ex_firebase, "~> 0.2.0"}]
end
```

Or install from GitHub

```elixir
def deps do
  [{:ex_firebase, github: "loopsocial/ex_firebase", branch: "master"}]
end
```

Run `mix deps.get`

## Configuration

[Setup Firebase](https://firebase.google.com/docs/admin/setup) and generate a private key for your service account

Add your Firebase Project ID and service account key path to your `config/config.exs` file:

```elixir
config :ex_firebase,
  project_id: "your-project-id",
  service_account_key_path: "/path/to/your/key.json"
```

## Supported Features

- [Authentication](https://hexdocs.pm/ex_firebase/ExFirebase.Auth.html)
    - [OAuth2 Access Token](https://hexdocs.pm/ex_firebase/ExFirebase.Auth.html#get_access_token/0) - [more](https://developers.google.com/identity/protocols/OAuth2ServiceAccount)
    - [Verify ID token](https://hexdocs.pm/ex_firebase/ExFirebase.Auth.html#verify_token/1) - [more](https://firebase.google.com/docs/auth/admin/verify-id-tokens)
- [Messaging](https://hexdocs.pm/ex_firebase/ExFirebase.Messaging.html)
    - [FCM push notifications](https://hexdocs.pm/ex_firebase/ExFirebase.Messaging.html#send_message/1) - [more](https://firebase.google.com/docs/cloud-messaging/concept-options)

## License

MIT. See `LICENSE` file in repository.

Firebase<sup>TM</sup> is trademark of Google LLC.
