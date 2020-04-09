defmodule SpaceCadetWeb.ComponentsHelpers do
  def c(template, assigns) do
    SpaceCadetWeb.ComponentsView.render(template, assigns)
  end

  def c(template, assigns, do: block) do
    SpaceCadetWeb.ComponentsView.render(template, Keyword.merge(assigns, [do: block]))
  end
end
