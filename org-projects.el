(setq org-publish-project-alist
      '(("compsci101-python"
	 :base-directory "~/Development/compsci101-text//"
	 :base-extension "org"
	 :publishing-directory "~/Development/compsci101-text/code/"
	 :publishing-function org-babel-tangle-publish
	 :recursive t
	 :exclude template
	 )
	("compsci101-latex"
	 :base-directory "~/Development/compsci101-text/org/"
	 :base-extension "org"
	 :publishing-directory "~/Development/compsci101-text/latex/"
	 :publishing-function (
			       ;org-latex-publish-to-latex 
			       org-latex-publish-to-pdf
			       )
	 :recursive t
	 :exclude template
	 )
	("compsci101-html"
	 :base-directory "~/Development/compsci101-text/org/"
	 :base-extension "org"
	 :publishing-directory "~/Development/compsci101-text/html/"
	 :publishing-function org-html-publish-to-html
	 :recursive t
	 :htmlized-source nil
	 :html-preamble t
	 ;:exclude template
	 ;:html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\" />"
	 )

	("compsci101" :components ("compsci101-html" "compsci101-latex"))))
