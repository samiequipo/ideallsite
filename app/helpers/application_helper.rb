module ApplicationHelper
   # Send each params in nav_link as logo, hover, button,..., etc.
   # request.path.split('/').last return last path as "meo/logo/index" = "index"
   # send(pacotes, image), pacotes = function, image = params. Send convert String into a function
  
  def which_pacotes?(type, pacotes: request.path.split('/').last )
    send(pacotes, type)
  end
  
  private

  def pacotes_meo(type)
    return "meo_logo.png" if type == "logo" 
    "meo-logo-ideall" if type == "logo_size" 
  end

  def pacotes_nos(type)
    if type == "logo" 
      "nos_logo.png"
    elsif type == "hover" 
      "pacotes_hover_nos"
    else
      "nos-logo-ideall"
    end
  end

  def pacotes_vodafone(type)
    if type == "logo" 
      "vodafone_logo_pacotes.png"
    elsif type == "hover" 
      "pacotes_hover_vodafone"
    else
      "vodafone-logo-ideall"
    end
  end

  def pacotes_nowo(type)
    if type == "logo" 
      "nowo.png"
    elsif type == "hover" 
      "pacotes_hover_nowo"
    else
      "nowo-logo-ideall"
    end
  end
end
