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

/* C:\xampp\htdocs\seaweddingv2/themes/sea-wedding/partials/bottom.htm */
class __TwigTemplate_e420ed6371e1242af15af194612273a3619cc17221e64168a9489e71f79c3dd8 extends \Twig\Template
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
        echo "<div id=\"call_now_button\" class=\"d-none d-md-block d-lg-block\">
    <div class=\"container\">
        <ul class=\"contact float-right\">
            <li>
<span class=\"fa-stack fa-1x\">
<i class=\"far fa-circle fa-stack-2x\"></i>
<i class=\"fa fa-phone fa-stack-1x\"></i>
</span>";
        // line 8
        $context["config_phone"] = twig_get_attribute($this->env, $this->source, ($context["config_phone"] ?? null), "configPhone", [], "any", false, false, false, 8);
        // line 9
        echo "                ";
        echo twig_escape_filter($this->env, ($context["config_phone"] ?? null), "html", null, true);
        echo "
            </li>
            <li>
<span class=\"fa-stack fa-1x\">
<i class=\"far fa-circle fa-stack-2x\"></i>
<i class=\"fa fa-envelope fa-stack-1x\"></i>
</span>
                ";
        // line 16
        $context["config_email_company"] = twig_get_attribute($this->env, $this->source, ($context["config_email_company"] ?? null), "configEmailCompany", [], "any", false, false, false, 16);
        // line 17
        echo "

                ";
        // line 19
        echo twig_escape_filter($this->env, ($context["config_email_company"] ?? null), "html", null, true);
        echo "
            </li>
            <li>
                <span class=\"fa-stack fa-1x\">
                <i class=\"far fa-circle fa-stack-2x\"></i>
                <i class=\"fas fa-directions fa-stack-1x\"></i>
                </span>
                <a href=\"lien-he\">Liên Hệ</a>
            </li>
        </ul>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/partials/bottom.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  65 => 19,  61 => 17,  59 => 16,  48 => 9,  46 => 8,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div id=\"call_now_button\" class=\"d-none d-md-block d-lg-block\">
    <div class=\"container\">
        <ul class=\"contact float-right\">
            <li>
<span class=\"fa-stack fa-1x\">
<i class=\"far fa-circle fa-stack-2x\"></i>
<i class=\"fa fa-phone fa-stack-1x\"></i>
</span>{% set config_phone=config_phone.configPhone %}
                {{ config_phone }}
            </li>
            <li>
<span class=\"fa-stack fa-1x\">
<i class=\"far fa-circle fa-stack-2x\"></i>
<i class=\"fa fa-envelope fa-stack-1x\"></i>
</span>
                {% set config_email_company=config_email_company.configEmailCompany %}


                {{ config_email_company }}
            </li>
            <li>
                <span class=\"fa-stack fa-1x\">
                <i class=\"far fa-circle fa-stack-2x\"></i>
                <i class=\"fas fa-directions fa-stack-1x\"></i>
                </span>
                <a href=\"lien-he\">Liên Hệ</a>
            </li>
        </ul>
    </div>
</div>", "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/partials/bottom.htm", "");
    }
}
