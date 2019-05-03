class ReviewableFlaggedPostSerializer < ReviewableSerializer
  target_attributes :cooked, :raw, :reply_count
  attributes :blank_post, :post_updated_at, :post_version

  def post_version
    object.target&.version
  end

  def post_updated_at
    object.target&.updated_at
  end

  def blank_post
    true
  end

  def include_blank_post?
    object.target.blank?
  end
end
