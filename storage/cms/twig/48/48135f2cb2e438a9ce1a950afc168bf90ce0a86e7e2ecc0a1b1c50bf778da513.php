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

/* C:\xampp\htdocs\seaweddingv2/themes/sea-wedding/pages/lien-he.htm */
class __TwigTemplate_a9f4a1e938b3a6f286865c44861bb79845079e387eedc46ceacb7ad57b9ca25a extends \Twig\Template
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
        $context['__cms_partial_params'] = [];
        $context['__cms_partial_params']['title_page'] = "Liên hệ"        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("title-page"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 2
        echo "<div id=\"cont1\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-8\">
                ";
        // line 6
        $context['__cms_component_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->componentFunction("contact_form"        , $context['__cms_component_params']        );
        unset($context['__cms_component_params']);
        // line 7
        echo "            </div>
            <div class=\"col-md-4\">
                <div class=\"contact_top\">
                    <h3 class=\"title\">Địa chỉ liên hệ</h3>
                    <hr>
                    <h4 class=\"title\">";
        // line 12
        $context["config_name_company"] = twig_get_attribute($this->env, $this->source, ($context["config_name_company"] ?? null), "configNameCompany", [], "any", false, false, false, 12);
        // line 13
        echo "                    ";
        echo twig_escape_filter($this->env, ($context["config_name_company"] ?? null), "html", null, true);
        echo "

 </h4>
                    <ul>
                        <li>
                            <i class=\"far fa-building\"></i><span>Địa Chỉ:</span>
                            ";
        // line 19
        $context["config_address_company"] = twig_get_attribute($this->env, $this->source, ($context["config_address_company"] ?? null), "configAddressCompany", [], "any", false, false, false, 19);
        // line 20
        echo "                            ";
        echo twig_escape_filter($this->env, ($context["config_address_company"] ?? null), "html", null, true);
        echo "

                        </li>
                        <li>
                            <i class=\"fas fa-phone\"></i><span>Điện Thoại:</span>
                            ";
        // line 25
        $context["config_phone"] = twig_get_attribute($this->env, $this->source, ($context["config_phone"] ?? null), "configPhone", [], "any", false, false, false, 25);
        // line 26
        echo "                            ";
        echo twig_escape_filter($this->env, ($context["config_phone"] ?? null), "html", null, true);
        echo "

                        </li>
                        <li>
                            <i class=\"far fa-envelope\"></i><span>Email: </span>
                            ";
        // line 31
        $context["config_email_company"] = twig_get_attribute($this->env, $this->source, ($context["config_email_company"] ?? null), "configEmailCompany", [], "any", false, false, false, 31);
        // line 32
        echo "                            ";
        echo twig_escape_filter($this->env, ($context["config_email_company"] ?? null), "html", null, true);
        echo "
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/lien-he.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  95 => 32,  93 => 31,  84 => 26,  82 => 25,  73 => 20,  71 => 19,  61 => 13,  59 => 12,  52 => 7,  48 => 6,  42 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% partial 'title-page' title_page='Liên hệ'%}
<div id=\"cont1\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-8\">
                {% component 'contact_form' %}
            </div>
            <div class=\"col-md-4\">
                <div class=\"contact_top\">
                    <h3 class=\"title\">Địa chỉ liên hệ</h3>
                    <hr>
                    <h4 class=\"title\">{% set config_name_company=config_name_company.configNameCompany %}
                    {{config_name_company}}

 </h4>
                    <ul>
                        <li>
                            <i class=\"far fa-building\"></i><span>Địa Chỉ:</span>
                            {% set config_address_company=config_address_company.configAddressCompany %}
                            {{config_address_company}}

                        </li>
                        <li>
                            <i class=\"fas fa-phone\"></i><span>Điện Thoại:</span>
                            {% set config_phone=config_phone.configPhone %}
                            {{config_phone}}

                        </li>
                        <li>
                            <i class=\"far fa-envelope\"></i><span>Email: </span>
                            {% set config_email_company=config_email_company.configEmailCompany %}
                            {{ config_email_company }}
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>", "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/lien-he.htm", "");
    }
}
