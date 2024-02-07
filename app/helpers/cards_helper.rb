module CardsHelper
  def render_card(title, content)
    render partial: 'shared/card', locals: { title: title, content: content }
  end
end
