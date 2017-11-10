defmodule Kothata.UserFactory do
  defmacro __using__(_opts) do
    quote do
      def user_factory do
        %Kothata.Accounts.User{
          email: "test@example.com",
          username: "test",
          password_hash: "secret"
        }
      end
    end
  end
end
