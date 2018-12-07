defmodule ExFirebase.Messaging.HTTPMock do
  @behaviour ExFirebase.Messaging.HTTP

  def send(_body, _access_token) do
    {:ok,
     %HTTPoison.Response{
       body: %{
         "name" => "projects/myproject-id/messages/0:1544204830625699%2575e27c2575e27c"
       },
       headers: [],
       status_code: 200
     }}
  end
end
