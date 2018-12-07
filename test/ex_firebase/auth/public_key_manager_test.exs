defmodule ExFirebase.Auth.PublicKeyManagerTest do
  use ExUnit.Case

  alias ExFirebase.Auth.PublicKeyManager
  alias ExFirebase.Error

  @keys File.cwd!()
        |> Path.join("/test/fixtures/public_keys.json")
        |> File.read!()
        |> Poison.decode!()

  test "is started in application supervision tree" do
    {:error, {{:already_started, _}, _}} = start_supervised(PublicKeyManager)
  end

  test "get_key/1 returns a key if it exists" do
    {key_id, key} = Enum.at(@keys, 0)
    assert {:ok, ^key} = PublicKeyManager.get_key(key_id)
  end

  test "get_key/1 returns error if key does not exist" do
    assert {:error, %Error{reason: :not_found}} = PublicKeyManager.get_key("invalid")
  end
end