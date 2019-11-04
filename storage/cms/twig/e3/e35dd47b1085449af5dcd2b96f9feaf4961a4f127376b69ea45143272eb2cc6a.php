<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* C:\xampp\htdocs\seaweddingv2/themes/sea-wedding/layouts/master.htm */
class __TwigTemplate_5eb3a6f0aabb603d401e14261dce295987c044f81beec05d7e06dbd8f2cbba50 extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<!DOCTYPE html>
<html>
<head>
    <meta charset=\"utf-8\">
    <title>October CMS - ";
        // line 5
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 5), "title", [], "any", false, false, false, 5), "html", null, true);
        echo "</title>
    <meta name=\"description\" content=\"";
        // line 6
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 6), "meta_description", [], "any", false, false, false, 6), "html", null, true);
        echo "\">
    <meta name=\"title\" content=\"";
        // line 7
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 7), "meta_title", [], "any", false, false, false, 7), "html", null, true);
        echo "\">
    <meta name=\"author\" content=\"OctoberCMS\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <meta name=\"generator\" content=\"OctoberCMS\">
    <link rel=\"icon\" type=\"image/png\" href=\"";
        // line 11
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/october.png");
        echo "\">
    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\"
          integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">
    <link href=\"https://fonts.googleapis.com/css?family=Roboto&display=swap\" rel=\"stylesheet\">
    <script src=\"https://kit.fontawesome.com/20005df3fc.js\" crossorigin=\"anonymous\"></script>
    <link href=\"";
        // line 16
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/css/reset.css");
        echo "\" rel=\"stylesheet\">
    <link href=\"";
        // line 17
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/css/common.css");
        echo "\" rel=\"stylesheet\">
    <link href=\"";
        // line 18
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/css/frontend.css");
        echo "\" rel=\"stylesheet\">
    <link href=\"";
        // line 19
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/css/core.common.css");
        echo "\" rel=\"stylesheet\">

    ";
        // line 21
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('css');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('styles');
        // line 22
        echo "</head>
<body>

<!-- Header -->
<header id=\"layout-header\">
    <div id=\"menu_desktop\" class=\"d-none d-md-block d-lg-block\">
        <div class=\"header-wrapper\">
            <div class=\"container\">
                <div class=\"header-inner\">
                    <div class=\"logo\">
                        <a href=\"#\"> <img class=\"logo-smartlinks\" src=\"";
        // line 32
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/logo/logo_white.png");
        echo "\" alt=\"\"></a>
                    </div>
                    <div class=\"items-left\">
                        ";
        // line 35
        $context['__cms_component_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->componentFunction("menu_left"        , $context['__cms_component_params']        );
        unset($context['__cms_component_params']);
        // line 36
        echo "                    </div>
                    <div class=\"items-right\">
                        ";
        // line 38
        $context['__cms_component_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->componentFunction("menu_right"        , $context['__cms_component_params']        );
        unset($context['__cms_component_params']);
        // line 39
        echo "                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Content -->
<section id=\"layout-content\">
    ";
        // line 48
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFunction();
        // line 49
        echo "</section>

<!-- Footer -->
<footer id=\"layout-footer\">

</footer>
";
        // line 55
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("footer"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 56
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("bottom"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 57
        echo "
<!-- Scripts -->
<script
        src=\"https://code.jquery.com/jquery-3.4.1.js\"
        integrity=\"sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=\"
        crossorigin=\"anonymous\"></script>
<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\"
        integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\"
        crossorigin=\"anonymous\"></script>
<!--<script src=\"";
        // line 66
        echo "assets/js/app.js|theme";
        echo "\"></script>-->
<script src=\"";
        // line 67
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/js/common.js");
        echo "\"></script>
<script src=\"";
        // line 68
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/js/core.common.js");
        echo "\"></script>
";
        // line 69
        $_minify = System\Classes\CombineAssets::instance()->useMinify;
        if ($_minify) {
            echo '<script src="' . Request::getBasePath() . '/modules/system/assets/js/framework.combined-min.js"></script>'.PHP_EOL;
        }
        else {
            echo '<script src="' . Request::getBasePath() . '/modules/system/assets/js/framework.js"></script>'.PHP_EOL;
            echo '<script src="' . Request::getBasePath() . '/modules/system/assets/js/framework.extras.js"></script>'.PHP_EOL;
        }
        echo '<link rel="stylesheet" property="stylesheet" href="' . Request::getBasePath() .'/modules/system/assets/css/framework.extras'.($_minify ? '-min' : '').'.css">'.PHP_EOL;
        unset($_minify);
        // line 70
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('js');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('scripts');
        // line 71
        $context["config_script_body"] = twig_get_attribute($this->env, $this->source, ($context["config_script_body"] ?? null), "configScriptBody", [], "any", false, false, false, 71);
        // line 72
        echo ($context["config_script_body"] ?? null);
        echo "
</body>
</html>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/layouts/master.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  184 => 72,  182 => 71,  179 => 70,  168 => 69,  164 => 68,  160 => 67,  156 => 66,  145 => 57,  141 => 56,  137 => 55,  129 => 49,  127 => 48,  116 => 39,  112 => 38,  108 => 36,  104 => 35,  98 => 32,  86 => 22,  83 => 21,  78 => 19,  74 => 18,  70 => 17,  66 => 16,  58 => 11,  51 => 7,  47 => 6,  43 => 5,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!DOCTYPE html>
<html>
<head>
    <meta charset=\"utf-8\">
    <title>October CMS - {{ this.page.title }}</title>
    <meta name=\"description\" content=\"{{ this.page.meta_description }}\">
    <meta name=\"title\" content=\"{{ this.page.meta_title }}\">
    <meta name=\"author\" content=\"OctoberCMS\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <meta name=\"generator\" content=\"OctoberCMS\">
    <link rel=\"icon\" type=\"image/png\" href=\"{{ 'assets/images/october.png'|theme }}\">
    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\"
          integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">
    <link href=\"https://fonts.googleapis.com/css?family=Roboto&display=swap\" rel=\"stylesheet\">
    <script src=\"https://kit.fontawesome.com/20005df3fc.js\" crossorigin=\"anonymous\"></script>
    <link href=\"{{ 'assets/css/reset.css'|theme }}\" rel=\"stylesheet\">
    <link href=\"{{ 'assets/css/common.css'|theme }}\" rel=\"stylesheet\">
    <link href=\"{{ 'assets/css/frontend.css'|theme }}\" rel=\"stylesheet\">
    <link href=\"{{ 'assets/css/core.common.css'|theme }}\" rel=\"stylesheet\">

    {% styles %}
</head>
<body>

<!-- Header -->
<header id=\"layout-header\">
    <div id=\"menu_desktop\" class=\"d-none d-md-block d-lg-block\">
        <div class=\"header-wrapper\">
            <div class=\"container\">
                <div class=\"header-inner\">
                    <div class=\"logo\">
                        <a href=\"#\"> <img class=\"logo-smartlinks\" src=\"{{ 'assets/images/logo/logo_white.png'|theme }}\" alt=\"\"></a>
                    </div>
                    <div class=\"items-left\">
                        {% component 'menu_left' %}
                    </div>
                    <div class=\"items-right\">
                        {% component 'menu_right' %}
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Content -->
<section id=\"layout-content\">
    {% page %}
</section>

<!-- Footer -->
<footer id=\"layout-footer\">

</footer>
{% partial \"footer\" %}
{% partial \"bottom\" %}

<!-- Scripts -->
<script
        src=\"https://code.jquery.com/jquery-3.4.1.js\"
        integrity=\"sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=\"
        crossorigin=\"anonymous\"></script>
<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\"
        integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\"
        crossorigin=\"anonymous\"></script>
<!--<script src=\"{{ 'assets/js/app.js|theme' }}\"></script>-->
<script src=\"{{ 'assets/js/common.js'|theme }}\"></script>
<script src=\"{{ 'assets/js/core.common.js'|theme }}\"></script>
{% framework extras %}
{% scripts %}
{% set config_script_body=config_script_body.configScriptBody %}
{{config_script_body|raw}}
</body>
</html>", "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/layouts/master.htm", "");
    }
}
