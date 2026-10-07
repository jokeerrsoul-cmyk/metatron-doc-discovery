# Introduction
This repository is for documenting about [metatron-discovery](https://github.com/metatron-app/metatron-discovery).

# How to build and update the contents
* Requirements
  * Python 3 + [pip](https://pypi.org/project/pip/)
  
* Clone this repository
  ```sh
     git clone https://github.com/metatron-app/metatron-doc-discovery.git
  ```
* Install packages
  ```sh
    pip install -r requirements.txt
  ```
* Edit the contents
   * Every document is written in **rst file**. Follow the reStructedText syntax.
   * Location for all the image files is `/_static/img/part00`

* Translate to English
  * Our docs is written in Korean first. For Eng, you need to update `.po` files in `locales/en/..`
  * Update `po` files after changing rst files.
    ```sh
       make gettext
       sphinx-intl update -p docs/gettext -l en
    ```
  * For Eng docs image, put `.en` at the end of the image file name.
  * Eng HTML files are located in `docs/en/` after building

* Translate to Polish
  * For Polish, you need to update `.po` files in `locales/pl/..`
  * Update `po` files after changing rst files.
    ```sh
       make gettext
       sphinx-intl update -p docs/gettext -l pl
    ```
  * For Polish docs image, put `.pl` at the end of the image file name.
  * `locales/pl/LC_MESSAGES/` already contains untranslated `.po` files ready for translators to fill in `msgstr` entries.
  * Polish HTML files are located in `docs/pl/` after building

* Build documents using [Sphinx](http://sphinx-doc.org/)
  ```sh    
    make all
    make en  //When building english version only.
    make pl  //When building polish version only.
  ```

* HTML files are located in `docs/` directory.

* Update
  ```sh
    git pull //Get the latest updates from remote repo before your commit.
    git add .
    git commit -m "commit message"
    git push
  ```

# References
* [Sphinx Documents](http://www.sphinx-doc.org/en/master/contents.html)
* [reStructuredText Quick Reference](http://docutils.sourceforge.net/docs/user/rst/quickref.html)
