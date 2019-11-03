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

/* E:\xampp\htdocs\seaweddingv2/themes/sea-wedding/partials/footer.htm */
class __TwigTemplate_3ce751036e4eea9e012b598affad9a9b8892fdc5108ee680a7da1f9296c9bd49 extends \Twig\Template
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
        $context["config_description"] = twig_get_attribute($this->env, $this->source, ($context["config_description"] ?? null), "configDescriptionCompany", [], "any", false, false, false, 1);
        // line 2
        $context["config_script_fanpage"] = twig_get_attribute($this->env, $this->source, ($context["config_script_fanpage"] ?? null), "configScriptFanpage", [], "any", false, false, false, 2);
        // line 3
        $context["config_name_company"] = twig_get_attribute($this->env, $this->source, ($context["config_name_company"] ?? null), "configNameCompany", [], "any", false, false, false, 3);
        // line 4
        $context["config_address_company"] = twig_get_attribute($this->env, $this->source, ($context["config_address_company"] ?? null), "configAddressCompany", [], "any", false, false, false, 4);
        // line 5
        $context["config_phone"] = twig_get_attribute($this->env, $this->source, ($context["config_phone"] ?? null), "configPhone", [], "any", false, false, false, 5);
        // line 6
        $context["config_email_company"] = twig_get_attribute($this->env, $this->source, ($context["config_email_company"] ?? null), "configEmailCompany", [], "any", false, false, false, 6);
        // line 7
        echo "



<div id=\"footer\" class=\"border-top\">

    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-4\">
                <span>Về Seawedding</span>
                <div class=\"is-divider small\"></div>
                <div class=\"description\">";
        // line 18
        echo ($context["config_description"] ?? null);
        echo "</div>
                <div id=\"contact_form_2\">

                </div>
            </div>
            <div class=\"col-md-4\">
                <span>Facebook</span>
                <div class=\"is-divider small\"></div>
                <div class=\"description\">Like page để nhận những ưu đãi hấp dẫn nhất</div>
                ";
        // line 27
        echo ($context["config_script_fanpage"] ?? null);
        echo "
            </div>
            <div class=\"col-md-4\">
                <span>Liên Hệ</span>
                <div class=\"is-divider small\"></div>
                <ul>
                    <li>";
        // line 33
        echo twig_escape_filter($this->env, ($context["config_name_company"] ?? null), "html", null, true);
        echo "</li>
                    <li><i class=\"fas fa-building\"></i>";
        // line 34
        echo twig_escape_filter($this->env, ($context["config_address_company"] ?? null), "html", null, true);
        echo "</li>
                    <li><i class=\"fas fa-phone\"></i>";
        // line 35
        echo twig_escape_filter($this->env, ($context["config_phone"] ?? null), "html", null, true);
        echo "</li>
                    <li><i class=\"fas fa-envelope\"></i>";
        // line 36
        echo twig_escape_filter($this->env, ($context["config_email_company"] ?? null), "html", null, true);
        echo "</li>

                </ul>
            </div>
        </div>

    </div>
    <div class=\"container-fluid copy-right\">
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"col-12 text-center\">
                    <p style=\"color: white\">Bản quyền thuộc về seawedding.net © 2018 | Thiết kế website bởi: smartlinks.vn .</p>
                </div>
            </div>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "E:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/partials/footer.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  95 => 36,  91 => 35,  87 => 34,  83 => 33,  74 => 27,  62 => 18,  49 => 7,  47 => 6,  45 => 5,  43 => 4,  41 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set config_description=config_description.configDescriptionCompany %}
{% set config_script_fanpage=config_script_fanpage.configScriptFanpage %}
{% set config_name_company=config_name_company.configNameCompany %}
{% set config_address_company=config_address_company.configAddressCompany %}
{% set config_phone=config_phone.configPhone %}
{% set config_email_company=config_email_company.configEmailCompany %}




<div id=\"footer\" class=\"border-top\">

    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-4\">
                <span>Về Seawedding</span>
                <div class=\"is-divider small\"></div>
                <div class=\"description\">{{config_description|raw}}</div>
                <div id=\"contact_form_2\">

                </div>
            </div>
            <div class=\"col-md-4\">
                <span>Facebook</span>
                <div class=\"is-divider small\"></div>
                <div class=\"description\">Like page để nhận những ưu đãi hấp dẫn nhất</div>
                {{config_script_fanpage|raw}}
            </div>
            <div class=\"col-md-4\">
                <span>Liên Hệ</span>
                <div class=\"is-divider small\"></div>
                <ul>
                    <li>{{config_name_company}}</li>
                    <li><i class=\"fas fa-building\"></i>{{config_address_company}}</li>
                    <li><i class=\"fas fa-phone\"></i>{{config_phone}}</li>
                    <li><i class=\"fas fa-envelope\"></i>{{config_email_company}}</li>

                </ul>
            </div>
        </div>

    </div>
    <div class=\"container-fluid copy-right\">
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"col-12 text-center\">
                    <p style=\"color: white\">Bản quyền thuộc về seawedding.net © 2018 | Thiết kế website bởi: smartlinks.vn .</p>
                </div>
            </div>
        </div>
    </div>
</div>", "E:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/partials/footer.htm", "");
    }
}
