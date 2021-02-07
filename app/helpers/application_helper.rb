module ApplicationHelper
   # Send each params in nav_link as logo, hover, button,..., etc.
   # request.path.split('/').last return last path as "meo/logo/index" = "index"
   # send(pacotes, image), pacotes = function, image = params. Send convert String into a function
  
  def which_pacotes?(type, pacotes: request.path.split('/').last )
    send(pacotes, type)
  end
  
  private

  def logo(type, image)
    if type == "logo"
      return image
    end
  end
  
  def pacotes_meo(type)
    logo(type, "meo_logo.png")
  end

  def pacotes_nos(type)
    if type == "logo" 
      "nos_logo.png"
    else
      "pacotes_hover_nos"
    end
  end

  def pacotes_vodafone(type)
    if type == "logo" 
      "vodafone_logo_pacotes.png"
    else
      "pacotes_hover_vodafone"
    end
  end

  def pacotes_nowo(type)
    if type == "logo" 
      "nowo.png"
    else
      "pacotes_hover_nowo"
    end
  end
end
