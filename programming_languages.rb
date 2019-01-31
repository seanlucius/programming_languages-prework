require "pry"

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}




def reformat_languages(languages)
  new_hash = {}
  languages.each do |styles, language|
    language.each do |indv_language, attributes|
      new_hash[indv_language] = attributes
      new_hash[indv_language][:style] = [styles]
    end 
  end 
  new_hash[:javascript][:style].push(:oo)
  new_hash
end


