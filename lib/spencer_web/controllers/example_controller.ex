defmodule SpencerWeb.ExampleController do
  @moduledoc """
  Router contains:

    scope "/", Api do
    pipe_through(:api_health_only)

    get("/health", HealthController, :health)
    resources("/example", ExampleController)
    end


  This generates the following routes:

    example_path  GET     /example           Api.ExampleController :index
    example_path  GET     /example/:id/edit  Api.ExampleController :edit
    example_path  GET     /example/new       Api.ExampleController :new
    example_path  GET     /example/:id       Api.ExampleController :show
    example_path  POST    /example           Api.ExampleController :create
    example_path  PATCH   /example/:id       Api.ExampleController :update
                  PUT     /example/:id       Api.ExampleController :update
    example_path  DELETE  /example/:id       Api.ExampleController :delete

  You then simply make functions that correspond to the atom, e.g. :create,
  :show, :index, etc.

  """
  use SpencerWeb, :controller

  @doc """
  This is a GET to `http://localhost:4000/example`
  """
  def index(conn, _params) do
    # conn
    # |> send_resp(200, "index.html")
    render(conn, "index.html", %{})
  end

  @doc """

  This is a GET to a route like `http://localhost:4000/example/1/edit` where <1>
  is the ID of the object you want to edit.

  """
  def edit(conn, _params) do
    conn
    |> send_resp(200, "edit")
  end

  ""

  @doc """
  This is a GET to `http://localhost:4000/example/new`
  """
  def new(conn, _params) do
    conn
    |> send_resp(200, "new")
  end

  @doc """

  This is a GET to `http://localhost:4000/example/1` where <1> is the ID of
  the object you want to see.

  """
  def show(conn, _params) do
    render(conn, "show.html", %{example: 123})
  end

  @doc """

  This is a POST to `http://localhost:4000/example` where the data you pass in
  will be used to create a new `example` object.

  NB: You will need to use a REST client like Postman to hit this endpoint.

  """
  def create(conn, _params) do
    conn
    |> send_resp(200, "create")
  end

  @doc """

  This is a PUT or PATCH (NOT a POST!) to `http://localhost:4000/example/1` where the
  data you pass in will be used to update an existing `example` object with the
  ID of 1.

  NB: You will need to use a REST client like Postman to hit this endpoint.

  """
  def update(conn, _params) do
    conn
    |> send_resp(200, "update")
  end

  @doc """

  This is a DELETE (NOT a POST!) to `http://localhost:4000/example/1` where the
  ID you pass in will be used to delete an existing `example` object with the
  ID of 1.

  NB: You will need to use a REST client like Postman to hit this endpoint.

  """
  def delete(conn, _params) do
    IO.puts("In delete!!")

    conn
    |> send_resp(200, "delete")
  end
end
