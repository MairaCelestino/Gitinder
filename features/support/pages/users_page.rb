class UserPages < Base
  def usuario_logado
    page.has_css?(".git-users")
  end
end
