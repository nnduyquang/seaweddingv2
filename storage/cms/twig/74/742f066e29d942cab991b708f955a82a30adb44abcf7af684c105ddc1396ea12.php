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

/* C:\xampp\htdocs\seaweddingv2/themes/sea-wedding/pages/home.htm */
class __TwigTemplate_bd8afda338d87022f0b955a297f2050d6a7fd2c746f04d3596e8763a60583cbf extends \Twig\Template
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
        $context['__cms_component_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->componentFunction("sliders"        , $context['__cms_component_params']        );
        unset($context['__cms_component_params']);
        // line 2
        echo "<div id=\"h_2\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-6\">
                <div class=\"info\">
                    <h1 class=\"title\">
                        Chào mừng đến Sea Wedding
                    </h1>
                    <p class=\"sub-intro\">WEDDING PHOTOGRAPHY STUDIO</p>
                    <p class=\"content\">Hãy lưu giữ lại những khoảnh khắc hạnh phúc nhất về tình yêu đôi lứa thông qua những bức hình cưới tuyệt đẹp cùng với đội ngũ chuyên nghiệp tại Sea Wedding </p>
                    <div class=\"bottom\">
                        <img src=\"";
        // line 13
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/temp/home/h2/welcome_icon.png");
        echo "\" alt=\"\">
                    </div>
                </div>
            </div>
            <div class=\"col-md-6\"
                 style=\"background:url(";
        // line 18
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/temp/home/h2/new_gg.png");
        echo ");background-position: center center;background-repeat: no-repeat;background-size: cover;\">
            </div>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/home.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  62 => 18,  54 => 13,  41 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% component 'sliders' %}
<div id=\"h_2\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-6\">
                <div class=\"info\">
                    <h1 class=\"title\">
                        Chào mừng đến Sea Wedding
                    </h1>
                    <p class=\"sub-intro\">WEDDING PHOTOGRAPHY STUDIO</p>
                    <p class=\"content\">Hãy lưu giữ lại những khoảnh khắc hạnh phúc nhất về tình yêu đôi lứa thông qua những bức hình cưới tuyệt đẹp cùng với đội ngũ chuyên nghiệp tại Sea Wedding </p>
                    <div class=\"bottom\">
                        <img src=\"{{ 'assets/images/temp/home/h2/welcome_icon.png'|theme }}\" alt=\"\">
                    </div>
                </div>
            </div>
            <div class=\"col-md-6\"
                 style=\"background:url({{ 'assets/images/temp/home/h2/new_gg.png'|theme }});background-position: center center;background-repeat: no-repeat;background-size: cover;\">
            </div>
        </div>
    </div>
</div>", "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/home.htm", "");
    }
}
