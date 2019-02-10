defmodule CommunityWeb.NewsResolver do
  alias Community.News

  def all_links(_root, _args, _info) do
    links = News.list_links()
    {:ok, links}
  end

  def create_link(_root, args, _info) do
    # TODO: add error message handling
    case News.create_link(args) do
      {:ok, link} -> {:ok, link}
      _error      -> {:error, "couldn't create the link"}
    end
  end
end
