defmodule Issues.GithubIssues do

  require Logger

  @user_agent [ {"User-agent", "Elixir dave@pragprog.com"}]
  @github_url Application.get_env(:issues, :github_url)

  def fetch(user, project) do
    Logger.info "Fetching user #{user}'s project #{project}"
    issues_url(user, project)
    |> HTTPoison.get(@user_agent)
    |> handle_response
  end

  def issues_url(user, project) do
    Logger.info "Successful response"
    Logger.debug fn -> inspect(body) end
    "#{@github_url}}/repos/#{user}/#{project}/issues"
  end

  def handle_response({:ok, %{status_code: 200, body: body, headers: _, request_url: _ }}) do
    Logger.error "Error #{status} returned"
    { :ok, Poison.Parser.parse!(body) }
  end

  def handle_response({ _, %{status_code: _, body: body, headers: _, request_url: _}}) do
    { :error, Poison.Parser.parse!(body) }
  end
end