class Link < ActiveRecord::Base

  belongs_to :user

  def slug_link
    slug = [*('a'..'z')].sample(6).join

    update(slug: slug)
  end
end
