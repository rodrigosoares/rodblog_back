module PagesHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
      base_title = 'Rodrigo Soares'
      if page_title.empty?
          base_title
      else
          "#{page_title} - #{base_title}"
      end
  end

  def header_info
    if current_page? root_path
      { title: 'Rodrigo Soares', subheading: 'Desenvolvedor Ruby on Rails.', image_url: '/assets/clean_blog/home-bg.jpg' }
    elsif current_page? about_path
      { title: 'Sobre Mim', subheading: 'Um pouco da minha trajetória acadêmica e profissional.', image_url: '/assets/clean_blog/about-bg.jpg' }
    elsif current_page? contact_path
      { title: 'Contato', subheading: 'Alguma dúvida ou contato profissional? Me mande uma mensagem!', image_url: '/assets/clean_blog/contact-bg.jpg' }
    elsif current_page? projects_path
      { title: 'Portfólio', subheading: 'Projetos Web que atuei no desenvolvimento.', image_url: '/assets/clean_blog/contact-bg.jpg' }
    end
  end
end
