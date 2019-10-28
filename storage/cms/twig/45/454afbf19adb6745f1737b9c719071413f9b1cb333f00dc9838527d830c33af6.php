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

/* C:\xampp\htdocs\seaweddingv2/themes/sea-wedding/pages/chi-tiet-album.htm */
class __TwigTemplate_9fe30394bc6a3559dc9c5336c04b54e7f1f2f1297a56d44b0d7342e8ba97b9e7 extends \Twig\Template
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
        $context["record"] = twig_get_attribute($this->env, $this->source, ($context["builderDetails"] ?? null), "record", [], "any", false, false, false, 1);
        // line 2
        $context["displayColumn"] = twig_get_attribute($this->env, $this->source, ($context["builderDetails"] ?? null), "displayColumn", [], "any", false, false, false, 2);
        // line 3
        $context["notFoundMessage"] = twig_get_attribute($this->env, $this->source, ($context["builderDetails"] ?? null), "notFoundMessage", [], "any", false, false, false, 3);
        // line 4
        echo "
";
        // line 5
        if (($context["record"] ?? null)) {
            // line 6
            $context['__cms_partial_params'] = [];
            $context['__cms_partial_params']['title_page'] = twig_get_attribute($this->env, $this->source, ($context["record"] ?? null), "title", [], "any", false, false, false, 6)            ;
            echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("title-page"            , $context['__cms_partial_params']            , true            );
            unset($context['__cms_partial_params']);
            // line 7
            echo "
<div id=\"alb_d_1\">
    <div class=\"container\">
        <div class=\"content\">

        </div>
        <div class=\"album\">
            <div class=\"grid-album\">
                <div class=\"grid-sizer\">
                    ";
            // line 16
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["record"] ?? null), "photos", [], "any", false, false, false, 16));
            foreach ($context['_seq'] as $context["_key"] => $context["photo"]) {
                // line 17
                echo "                    ";
                $context["source"] = $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["photo"], "photo_path", [], "any", false, false, false, 17));
                // line 18
                echo "                    ";
                $context["ratio"] = ((call_user_func_array($this->env->getFunction('image_height')->getCallable(), [($context["source"] ?? null)]) / call_user_func_array($this->env->getFunction('image_width')->getCallable(), [($context["source"] ?? null)])) * 100);
                // line 19
                echo "
                    ";
                // line 20
                echo twig_escape_filter($this->env, ($context["source"] ?? null), "html", null, true);
                echo " - ";
                echo twig_escape_filter($this->env, ($context["ratio"] ?? null), "html", null, true);
                echo "
                    ";
                // line 21
                echo call_user_func_array($this->env->getFunction('image_width')->getCallable(), [($context["source"] ?? null)]);
                echo " -   ";
                echo call_user_func_array($this->env->getFunction('image_height')->getCallable(), [($context["source"] ?? null)]);
                echo "
                    <div class=\"grid-item\">
                        <a class=\"fancybox\" data-fancybox=\"gallery\"
                           href=\"";
                // line 24
                echo twig_escape_filter($this->env, ($context["source"] ?? null), "html", null, true);
                echo "\">
                            <div class=\"wrapper\" style=\"width:100%; padding-bottom: ";
                // line 25
                echo twig_escape_filter($this->env, ($context["ratio"] ?? null), "html", null, true);
                echo "%\">
                                <div class=\"inner\">
                                    <img class=\"lazy-img-src\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\"
                                         data-src=\"";
                // line 28
                echo twig_escape_filter($this->env, ($context["source"] ?? null), "html", null, true);
                echo "\"/>
                                </div>
                            </div>
                        </a>
                    </div>


                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['photo'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 36
            echo "
                </div>
            </div>
        </div>

    </div>
</div>
";
        } else {
            // line 44
            echo twig_escape_filter($this->env, ($context["notFoundMessage"] ?? null), "html", null, true);
            echo "
";
        }
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/chi-tiet-album.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  125 => 44,  115 => 36,  101 => 28,  95 => 25,  91 => 24,  83 => 21,  77 => 20,  74 => 19,  71 => 18,  68 => 17,  64 => 16,  53 => 7,  48 => 6,  46 => 5,  43 => 4,  41 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set record = builderDetails.record %}
{% set displayColumn = builderDetails.displayColumn %}
{% set notFoundMessage = builderDetails.notFoundMessage %}

{% if record %}
{% partial \"title-page\" title_page=record.title %}

<div id=\"alb_d_1\">
    <div class=\"container\">
        <div class=\"content\">

        </div>
        <div class=\"album\">
            <div class=\"grid-album\">
                <div class=\"grid-sizer\">
                    {% for photo in record.photos %}
                    {% set source = photo.photo_path|media %}
                    {% set ratio= (image_height(source)/image_width(source))*100 %}

                    {{source}} - {{ratio}}
                    {{image_width(source)}} -   {{image_height(source)}}
                    <div class=\"grid-item\">
                        <a class=\"fancybox\" data-fancybox=\"gallery\"
                           href=\"{{source}}\">
                            <div class=\"wrapper\" style=\"width:100%; padding-bottom: {{ratio}}%\">
                                <div class=\"inner\">
                                    <img class=\"lazy-img-src\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\"
                                         data-src=\"{{source}}\"/>
                                </div>
                            </div>
                        </a>
                    </div>


                    {% endfor %}

                </div>
            </div>
        </div>

    </div>
</div>
{% else %}
{{ notFoundMessage }}
{% endif %}", "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/chi-tiet-album.htm", "");
    }
}
