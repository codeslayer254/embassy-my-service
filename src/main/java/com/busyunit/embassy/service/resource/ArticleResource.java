package com.busyunit.embassy.service.resource;

import com.busyunit.embassy.service.controller.NavigationController;
import com.busyunit.embassy.service.model.Navigation;
import lombok.Getter;
import lombok.Setter;
import org.springframework.hateoas.ResourceSupport;

import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;
import static org.springframework.hateoas.mvc.ControllerLinkBuilder.methodOn;

/**
 * {@code ArticleResource} wraps an article entity as resource.
 * <p/>
 *
 * @author Ram Ayall
 * @since 08/04/18
 */

@Getter
@Setter
public class ArticleResource extends ResourceSupport {

    private final Navigation navigation;
   // private Collection<PageCategory> categories;

    public ArticleResource(Navigation navigation) {
        this.navigation = navigation;
        final Integer id = navigation.getId();
        add(linkTo(methodOn(NavigationController.class).getArticle(id)).withSelfRel());
    }
}
