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

/* C:\xampp\htdocs\seaweddingv2/plugins/quang/post/components/quang_post/default.htm */
class __TwigTemplate_edd2684771e5c5d536edf22ac32a7b561b0e0a9d549164b2694b2e8c33d6bbcd extends \Twig\Template
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
        $context["quang_posts"] = twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "posts", [], "any", false, false, false, 1);
        // line 2
        echo "<div id=\"h_3\" class=\"pl-lg-5 pr-lg-5 pl-3 pr-3\">
    <div class=\"row pl-lg-5 pr-lg-5 pl-3 pr-3\">
        <div class=\"col-12 title\">
            <h2>DỊCH VỤ CỦA CHÚNG TÔI</h2>
            <p></p>
        </div>
        ";
        // line 8
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["quang_posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 9
            echo "        <div class=\"col-md-4 mb-3\">
            <a href=\"";
            // line 10
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 10), "html", null, true);
            echo "\">
                <div class=\"sv_banner\" style=\"background-image:url(";
            // line 11
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 11), "path", [], "any", false, false, false, 11), "html", null, true);
            echo ");\">
                    <div class=\"border-top-bot\"></div>
                    <div class=\"sv_content\">
                        <h5>";
            // line 14
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 14), "html", null, true);
            echo "</h5>
                        <div class=\"info pt-3\">
                            <p>";
            // line 16
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "description", [], "any", false, false, false, 16), "html", null, true);
            echo "</p>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 23
        echo "    </div>

</div>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\seaweddingv2/plugins/quang/post/components/quang_post/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  82 => 23,  69 => 16,  64 => 14,  58 => 11,  54 => 10,  51 => 9,  47 => 8,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set quang_posts=__SELF__.posts %}
<div id=\"h_3\" class=\"pl-lg-5 pr-lg-5 pl-3 pr-3\">
    <div class=\"row pl-lg-5 pr-lg-5 pl-3 pr-3\">
        <div class=\"col-12 title\">
            <h2>DỊCH VỤ CỦA CHÚNG TÔI</h2>
            <p></p>
        </div>
        {% for post in quang_posts %}
        <div class=\"col-md-4 mb-3\">
            <a href=\"{{ post.url }}\">
                <div class=\"sv_banner\" style=\"background-image:url({{post.img_primary.path}});\">
                    <div class=\"border-top-bot\"></div>
                    <div class=\"sv_content\">
                        <h5>{{ post.title }}</h5>
                        <div class=\"info pt-3\">
                            <p>{{ post.description }}</p>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        {% endfor %}
    </div>

</div>", "C:\\xampp\\htdocs\\seaweddingv2/plugins/quang/post/components/quang_post/default.htm", "");
    }
}
